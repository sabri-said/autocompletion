let searchBar = document.getElementById('searchBar');
let searchBtn = document.getElementById('searchBtn');
let rowForm = document.getElementById('rowForm');
let listGroupResult = document.getElementById('listGroupResult');

searchBar.addEventListener('input', function(ev) {
  while (listGroupResult.firstElementChild) {
    listGroupResult.removeChild(listGroupResult.firstElementChild);
  }
  let getParams = `search-bar=${encodeURIComponent(this.value)}`;
  xhr('search_engine.php?', getParams, response => {
    if (Object.keys(response).length >= 1) {
      for (let responseElement of response) {
        let bsListItemElement = document.createElement('li');
        listGroupResult.style.maxHeight = '30vh';
        listGroupResult.style.overflowY = 'scroll';
        bsListItemElement.classList.add('list-group-item');
        bsListItemElement.textContent = responseElement.name;
        listGroupResult.append(bsListItemElement);

        function activeListItem(ev) {
          if (!this.classList.contains('active')) {
            bsListItemElement.classList.add('active');
            bsListItemElement.addEventListener('click', openElementList);
          }

          function openElementList(ev) {
            console.log(
                window.location.href = `../recherche.php?search=${encodeURIComponent(
                    searchBar.value)}`);
          }
        }

        function deactiveListItem(ev) {
          if (this.classList.contains('active')) {
            bsListItemElement.classList.remove('active');
          }
        }

        bsListItemElement.addEventListener('mouseover', activeListItem);
        bsListItemElement.addEventListener('mouseout', deactiveListItem);

      }
    }
  });
});

/**
 * @callback xhrCallback
 */
/**
 * @param {string} url
 * @param {string} params
 * @param {xhrCallback} callback
 */
function xhr(url, params, callback) {
  let xhr = new XMLHttpRequest();

  xhr.onload = function(evOnLoad) {
    if (this.status === 200) {
      if (this.response !== '') {
        callback(JSON.parse(this.response));
      }
    }
  };
  xhr.open('GET', url + params);
  xhr.send();
}