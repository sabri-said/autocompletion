let searchBar = document.getElementById('searchBar');
let listGroupResult = document.getElementById('listGroupResult');
let searchEngineForm = document.getElementById('searchEngineForm');



searchEngineForm.addEventListener('submit', function(ev) {
  ev.preventDefault();

  let xhrUrlParams = `search-bar=${encodeURIComponent(searchBar.value)}`;
  xhr('search_engine.php?', xhrUrlParams, response => {
    window.location.href = `../recherche.php?search=${encodeURIComponent(
        searchBar.value)}`;
  });

});



searchBar.addEventListener('input', function(ev) {

  while (listGroupResult.firstElementChild) {
    listGroupResult.removeChild(listGroupResult.firstElementChild);
  }

  let xhrUrlParams = `search-bar=${encodeURIComponent(this.value)}`;

  xhr('search_engine.php?', xhrUrlParams, response => {

    if (Object.keys(response).length > 0) {
      for (let responseElement of response) {
        let bsListItemElement = document.createElement('li');
        bsListItemElement.classList.add('list-group-item');
        bsListItemElement.textContent = responseElement.name;
        listGroupResult.append(bsListItemElement);

        if (listGroupResult.childElementCount > 8) {
          listGroupResult.style.maxHeight = '30vh';
          listGroupResult.style.overflowY = 'scroll';
        } else {
          listGroupResult.style.overflowY = null;
        }

        function activeListItem(ev) {
          if (!this.classList.contains('active')) {
            bsListItemElement.classList.add('active');
            bsListItemElement.addEventListener('click', openElementList);
          }

          function openElementList(ev) {
            window.location.href = `../recherche.php?search=${encodeURIComponent(
                searchBar.value)}`;
          }
        }

        function deactiveListItem(ev) {
          if (this.classList.contains('active')) {
            bsListItemElement.classList.remove('active');
          }
        }

        bsListItemElement.addEventListener('mouseover', activeListItem);
        bsListItemElement.addEventListener('mouseleave', deactiveListItem);

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
function xhr(url, params, callback = null) {
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