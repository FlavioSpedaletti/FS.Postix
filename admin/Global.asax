<%@ Application Language="C#" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.IO.Compression" %>

<script runat="server">
void Application_PreRequestHandlerExecute(object sender, EventArgs e)
{
	HttpApplication app = sender as HttpApplication;
	string acceptEncoding = app.Request.Headers["Accept-Encoding"];
	Stream prevUncompressedStream = app.Response.Filter;

	if (!(app.Context.CurrentHandler is Page ||
		app.Context.CurrentHandler.GetType().Name == "SyncSessionlessHandler") ||
		app.Request["HTTP_X_MICROSOFTAJAX"] != null)
		return;

	if (acceptEncoding == null || acceptEncoding.Length == 0)
		return;

	acceptEncoding = acceptEncoding.ToLower();

	if (acceptEncoding.Contains("gzip") || acceptEncoding == "*")
	{	
		// gzip
		app.Response.Filter = new GZipStream(prevUncompressedStream,
			CompressionMode.Compress);
		app.Response.AppendHeader("Content-Encoding", "gzip");
	} else if (acceptEncoding.Contains("deflate"))
	{
		// defalte
		app.Response.Filter = new DeflateStream(prevUncompressedStream,
			CompressionMode.Compress);
		app.Response.AppendHeader("Content-Encoding", "deflate");
	}
}
</script>