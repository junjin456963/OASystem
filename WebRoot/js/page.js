var marketEellBody=$(".market-sell-body");
if(marketEellBody.length>=1){
  var sellTimeSeekbut=$(".sell-time-seekbut");
  sellTimeSeekbut.click(function(){
     $("iframe").css("display","block");
      $(".scre-Wrap").css("display","block");
      $(".pop-wrap").css("display","block");
  });
  $(".sales-choice-NO").click(function(){
     $("iframe").css("display","none");
     $(".scre-Wrap").css("display","none");
     $(".pop-wrap").css("display","none");
  });
};
var marketApproveBody=$(".market-approve-body");
if(marketApproveBody.length>=1){
  var sellTimeSeekbut=$(".sell-time-seekbut");
  sellTimeSeekbut.click(function(){
     $("iframe").css("display","block");
      $(".scre-Wrap").css("display","block");
      $(".pop-wrap").css("display","block");
  });
  $(".sales-choice-NO").click(function(){
     $("iframe").css("display","none");
     $(".scre-Wrap").css("display","none");
     $(".pop-wrap").css("display","none");
  });
};
var marketReduceBody=$(".market-reduce-body");
if(marketReduceBody.length>=1){
  var tianjialiyou=$(".tianjialiyou"),
      sellTableDEL=$(".sell-table-DEL"),
      sellTableCenterTD=$(".sell-table-centerTD");
  sellTableDEL.click(function(){
    $("iframe").css("display","block");
    $(".scre-Wrap").eq(1).css("display","block");
    $(".pop-wrap").eq(1).css("display","block");
  });
  tianjialiyou.click(function(){
    $("iframe").css("display","block");
    $(".scre-Wrap").eq(0).css("display","block");
    $(".pop-wrap").eq(0).css("display","block");
  });
  sellTableCenterTD.click(function(){
    $("iframe").css("display","block");
    $(".scre-Wrap").eq(2).css("display","block");
    $(".pop-wrap").eq(2).css("display","block");
  })
  $(".sales-choice-NO").click(function(){
    $("iframe").css("display","none");
    $(".scre-Wrap").css("display","none");
    $(".pop-wrap").css("display","none");
  });
};
var marketStoreBody=$(".market-store-body");
if(marketStoreBody.length>=1){
  var marketSroteAdd=$(".market-srote-add"),
      marketSroteDel=$(".market-srote-del"),
      marketSroteBj=$(".market-srote-bj");
  marketSroteAdd.click(function(){
    $("iframe").css("display","block");
    $(".scre-Wrap").eq(2).css("display","block");
    $(".pop-wrap").eq(2).css("display","block");
  });
  marketSroteBj.click(function(){
     $("iframe").css("display","block");
    $(".scre-Wrap").eq(1).css("display","block");
    $(".pop-wrap").eq(1).css("display","block");
  })
  marketSroteDel.click(function(){
    $("iframe").css("display","block");
    $(".scre-Wrap").eq(0).css("display","block");
    $(".pop-wrap").eq(0).css("display","block");
  })
  $(".sales-choice-NO").click(function(){
    $("iframe").css("display","none");
    $(".scre-Wrap").css("display","none");
    $(".pop-wrap").css("display","none");
  });

}