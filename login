


<!DOCTYPE HTML>
<html>

<head>
    <meta charset="utf-8">

    <title>Skills Network Labs</title>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    
    <link rel="stylesheet" href="/hub/static/css/style.min.css?v=bff49b4a161afb17ee3b71927ce7d6c4e5b0e4b9ef6f18ca3e356a05f29e69776d3a76aee167060dd2ae2ee62d3cfdcf203b4b0090b1423f7d629ea7daa3f9da" type="text/css"/>
    
    
    <link rel="icon" href="/hub/static/favicon.ico?v=fde5757cd3892b979919d3b1faa88a410f28829feb5ba22b6cf069f2c6c98675fceef90f932e49b510e74d65c681d5846b943e7f7cc1b41867422f0481085c1f" type="image/x-icon">
    
    
    <script src="/hub/static/components/requirejs/require.js?v=bd1aa102bdb0b27fbf712b32cfcd29b016c272acf3d864ee8469376eaddd032cadcf827ff17c05a8c8e20061418fe58cf79947049f5c0dff3b4f73fcc8cad8ec" type="text/javascript" charset="utf-8"></script>
    <script src="/hub/static/components/jquery/dist/jquery.min.js?v=f3de1813a4160f9239f4781938645e1589b876759cd50b7936dbd849a35c38ffaed53f6a61dbdd8a1cf43cf4a28aa9fffbfddeec9a3811a1bb4ee6df58652b31" type="text/javascript" charset="utf-8"></script>
    <script src="/hub/static/components/bootstrap/dist/js/bootstrap.min.js?v=a014e9acc78d10a0a7a9fbaa29deac6ef17398542d9574b77b40bf446155d210fa43384757e3837da41b025998ebfab4b9b6f094033f9c226392b800df068bce" type="text/javascript" charset="utf-8"></script>
    
    <script>
      require.config({
          
          urlArgs: "v=20210825114655",
          
          baseUrl: '/hub/static/js',
          paths: {
            components: '../components',
            jquery: '../components/jquery/dist/jquery.min',
            bootstrap: '../components/bootstrap/dist/js/bootstrap.min',
            moment: "../components/moment/moment",
          },
          shim: {
            bootstrap: {
              deps: ["jquery"],
              exports: "bootstrap"
            },
          }
      });
    </script>

    <script type="text/javascript">
      window.jhdata = {
        base_url: "/hub/",
        prefix: "/",
        
        
        admin_access: false,
        
        
        options_form: false,
        
      }
    </script>

    
    

</head>

<body>

<noscript>
  <div id='noscript'>
    JupyterHub requires JavaScript.<br>
    Please enable it to proceed.
  </div>
</noscript>













<div id="login-main" class="container">


<div class="service-login">
  <a role="button" class='btn btn-jupyter btn-lg' href='/hub/oauth_login?next=%2Fhub%2Fuser%2Fwilliamadams%2Ffiles%2Flabs%2FPY0101EN-5.4_WorkingWithDifferentFileTypes.ipynb%3F_xsrf%3D2%257C6be80dda%257C554710c497faf758f5c76c4b0875626d%257C1629999328'>
    Sign in with Skills Network Labs
  </a>
</div>


</div>










<div class="modal fade" id="error-dialog" tabindex="-1" role="dialog" aria-labelledby="error-label" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="error-label">Error</h4>
      </div>
      <div class="modal-body">
        
  <div class="ajax-error">
    The error
  </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" data-dismiss="modal">OK</button>
      </div>
    </div>
  </div>
</div>




<script src="https://browser.sentry-cdn.com/5.7.1/bundle.min.js" integrity="sha384-KMv6bBTABABhv0NI+rVWly6PIRvdippFEgjpKyxUcpEmDWZTkDOiueL5xW+cztZZ" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/event-source-polyfill/0.0.9/eventsource.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.3.6/require.min.js"></script>
<script>
  Sentry.init({ dsn: 'https://b62337c247e041c68a1f0025cfecc2d1@sentry.skills.network/18' });
</script>
<script>
  function sendLog(username, errorData) {
    var request = new XMLHttpRequest();
    request.open("POST", "https://messaging.skills.network/user/" + username + "/error", true);
    request.setRequestHeader("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJvcmdhbml6YXRpb24iOiJzbiIsInByb2dyYW0iOiJsYWJzIiwicHJvamVjdCI6InRvb2wiLCJvcHRpb25zIjp7InBlcm1pdHRlZFR5cGUiOiJ1c2VyIiwicGVybWl0dGVkQWN0aW9ucyI6WyJlcnJvciJdfSwiaWF0IjoxNTk2MDMzODEwfQ.fqjCDCR8FJHDPIyqa6Qn5VhCdhx8safH0VGAbBLioJk");
    request.setRequestHeader('Content-Type', 'application/json');
    request.send(JSON.stringify({ data: errorData}));
    request.onreadystatechange = function () {
      if (request.readyState == 4 && request.status == 201) {
          console.log('Reported that tool failed to start');
      }
    }
  }
</script>



<script>
if (window.location.protocol === "http:") {
  // unhide http warning
  var warning = document.getElementById('insecure-login-warning');
  warning.className = warning.className.replace(/\bhidden\b/, '');
}
// setup onSubmit feedback
$('form').submit((e) => {
  var form = $(e.target);
  form.find('.feedback-container>input').attr('disabled', true);
  form.find('.feedback-container>*').toggleClass('hidden');
  form.find('.feedback-widget>*').toggleClass('fa-pulse');
});
</script>


</body>

</html>