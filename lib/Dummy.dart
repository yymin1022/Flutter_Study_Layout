import 'package:flutter_study/models/NewsModel.dart';

dummyNews(){
 var rtn = dummyBase();
 dummyBase().forEach((f){
   rtn.add(f);
 });
 return rtn;
}

List<NewsModel> dummyBase()=> [
  NewsModel(
      title: "美국방부 “주한미군 철수 보도 사실무근…기사 즉각 취소하라”",
      ref: "중앙일보",
      images: ["https://pds.joins.com/news/component/htmlphoto_mmdata/201911/21/3d472643-16a8-4749-b2b2-11effb2934a5.jpg"],
      url: "https://news.joins.com/article/23638614"
  ),
  NewsModel(
      title: "LG전자, V50씽큐 SW 업데이트…듀얼스크린 활용도↑ [출처: 매일경제] LG전자, V50씽큐 SW 업데이트…듀얼스크린 활용도↑",
      ref: "매일경제",
      images: ["https://file.mk.co.kr/meet/neds/2019/11/image_readtop_2019_897182_15725700613959903.jpg"],
      url: "https://news.joins.com/article/23638614"
  ),

  NewsModel(
      title: "LG 듀얼 스크린, 게임팬 상대 마케팅 확대한다 [출처: 이뉴스투데이] LG 듀얼 스크린, 게임팬 상대 마케팅 확대한다",
      ref: "이뉴스투데이",
      images: ["https://www.lg.com/au/images/MC/features/06_G7-ThinQ_Portrait-mode_desktop.jpg"],
      url: "http://www.enewstoday.co.kr/news/articleView.html?idxno=1350676"
  ),

  NewsModel(
      title: "LG전자, LG V50S ThinQ 국내 출시 [출처: 일요서울] LG전자, LG V50S ThinQ 국내 출시",
      ref: "일요서울",
      images: ["http://www.ilyoseoul.co.kr/news/photo/201910/340126_256944_134.jpg"],
      url: "http://www.ilyoseoul.co.kr/news/articleView.html?idxno=340126"
  ),

  NewsModel(
      title: "V50S 씽큐 기획·개발자 인터뷰 \"LG가 듀얼스크린폰 생태계 이끌것\"[출처: 매일경제] V50S 씽큐 기획·개발자 인터뷰 \"LG가 듀얼스크린폰 생태계 이끌것\"",
      ref: "매일경제",
      images: ["https://file.mk.co.kr/meet/neds/2019/10/image_readtop_2019_810710_15705237923929475.jpg"],
      url: "https://www.mk.co.kr/news/it/view/2019/10/810710/"
  ),
];