const _kApiKey = "1078058ec4144ea9b30741c553fd4128";
const _kBaseUrl = "https://newsapi.org/v2/top-headlines";
const _kRelativeUrl = '?country=us';
const _kApiKeyUrl = '&apiKey=$_kApiKey';

const kTopHeadLinesUrl = '$_kBaseUrl$_kRelativeUrl$_kApiKeyUrl';
// const kTopHeadLinesUrl = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=1078058ec4144ea9b30741c553fd4128';

// https://newsapi.org/v2/top-headlines?country=us&apiKey=1078058ec4144ea9b30741c553fd4128