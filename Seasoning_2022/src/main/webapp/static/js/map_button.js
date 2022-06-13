function movePage(navigator) {
  var pageUrl = $(navigator).attr("url");

  if (pageUrl !== location.pathname) {
    history.pushState({ path: pageUrl }, null, pageUrl);
    var popStateEvent = new PopStateEvent("popstate", { state: null });
    dispatchEvent(popStateEvent);
  }
}

onpopstate = function (e) {
  $.ajax({
    type: "GET",
    url: history.state.path,
    data: { type: "get" },
    success: function (data) {
      var bodyData =
        data.substring(
          data.indexOf("<!--body start-->"),
          data.indexOf("<!--body end-->")
        ) + " ";
      // " " +
      // data.substring(
      //   data.indexOf("<!--js start-->"),
      //   data.indexOf("<!--js end-->")
      // );
      $("#fb_section").html(data);
    },
  });
};
