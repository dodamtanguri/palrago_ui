// 탭 카테고리 enum class
enum StoreTabCategory {
  recentlyKeyword(100, '최근검색어'),
  popular(200, '인기 검색어'),
  recentlyProduct(300, '최근 본 상품'),
  foundMember(400, '찾은 회원');

  const StoreTabCategory(this.tabId, this.title);

  final int tabId;
  final String title;
}