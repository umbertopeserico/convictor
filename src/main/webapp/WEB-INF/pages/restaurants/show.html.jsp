<%-- 
    Document   : restaurant_profile.html
    Created on : 14-giu-2016, 15.29.02
    Author     : Giovanni Maria Riva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@taglib prefix="l" tagdir="/WEB-INF/tags/layouts/" %>


<l:main>
	
	<jsp:attribute name="title">{Restaurant's Name} Pagina</jsp:attribute>
	
	<jsp:attribute name="body">
            <div class="ui container">

                <!-- Restaurant's Name -->
                <div class="ui center aligned grid">
                  <div class="column">
                    <div class="ui header large">
                      Trattoria Milanese
                    </div>
                  </div>
                </div>

                <!-- Restaurant Image -->
                <div class="ui two column centered grid">
                  <div class="column">
                      <img class="ui centered image mySlides" src="../images/rest0.jpg">
                      <img class="ui centered image mySlides" src="../images/rest1.jpg">
                      <img class="ui centered image mySlides" src="../images/rest2.jpg">
                      <img class="ui centered image mySlides" src="../images/rest3.jpg">
                      <div class="w3-center w3-section w3-large w3-text-white w3-display-bottomleft" style="width:100%">
                        <div class="w3-left w3-padding-left w3-hover-text-white w3-text-white" onclick="plusDivs(-1)">&#10094;</div>
                        <div class="w3-right w3-padding-right w3-hover-text-white" onclick="plusDivs(1)">&#10095;</div>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(4)"></span>
                      </div>
                  </div>
                </div>

                <!-- Rating Infos & Reviews Infos & QR Code & Personal Infos -->
                <div class="ui center aligned middle aligned five column stackable grid">
                  <div class="stretched column">
                    <div class="row">
                      <div class="ui small statistic">
                        <div class="value">
                          5
                        </div>
                        <div class="label">
                          position in Lombardia
                        </div>
                      </div>
                    </div>
                    <div class="ui statistic">
                      <div class="ui huge center rating" data-rating="1" data-max-rating="5"></div>
                    </div>
                  </div>
                  <div class="stretched column">
                    <img class="ui small centered image" src="../images/default_qrcode.png"/>
                  </div>
                  <div class="stretched column">
                    <div class="ui list">
                      <div class="item">
                        <div class="meta">
                          <span>Via Roma, 100</span>
                          <span>1010</span>
                          <span>Milano</span>
                        </div>
                      </div>
                      <div class="item">
                        <div class="meta">trattoria@milanese.me</div>
                      </div>
                      <div class="item">
                        <div class="meta">0123 456789</div>
                      </div>
                      <div class="item">
                        <div class="meta"><a href="#">Web Page</a></div>
                      </div>
                    </div>
                  </div>
                </div>


                <!-- Restaurant Infos -->
                <div class="ui center aligned six column stackable grid">
                  <div class="row">
                    <div class="column">
                      <div clas="ui grid">
                        <div class="column">
                          <div class="ui sub header">Cucina</div>
                        </div>
                        <div class="ui divider"></div>
                        <div class="column">
                          <div class="ui list">
                            <div class="item">
                              Cinese
                            </div>
                            <div class="item">
                              Giapponese
                            </div>
                            <div class="item">
                              Indiano
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="column">
                      <div clas="ui center aligned grid">
                        <div class="column">
                          <div class="ui sub header">Orari di apertura</div>
                        </div>
                        <div class="ui divider"></div>
                        <div class="column">
                          <div class="ui list">
                            <div class="item">
                              7.30 - 12.30
                            </div>
                            <div class="item">
                              18.30 - 1.30
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="column">
                      <div clas="ui center aligned grid">
                        <div class="column">
                          <div class="ui sub header">Fascia di prezzo</div>
                        </div>
                        <div class="ui divider"></div>
                        <div class="column">
                          <div class="ui list">
                            <div class="item">
                              Alta
                            </div>
                            <div class="item">
                              Media
                            </div>
                            <div class="item">
                              Bassa
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="column">
                      <div clas="ui center aligned grid">
                        <div class="column">
                          <div class="ui sub header">Giorno di chiusura</div>
                        </div>
                        <div class="ui divider"></div>
                        <div class="column">
                          <div class="ui list">
                            <div class="item">
                              LUN
                            </div>
                            <div class="item">
                              MER
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="ui divider"></div>
                </div>

                <!-- Show Reviews/Map Buttons -->
                <div class="ui stackable center aligned three columns grid ">

                  <div class="row">
                    <div class="column">
                      <div class="ui four item tabular menu">
                        <a class="item active" data-tab="recensioni">Recensioni</a>
                        <a class="item " data-tab="mappa">Mappa</a>
                        <a class="item" data-tab="reclama">Reclama</a>
                        <a class="item" data-tab="addimage">Carica Immagine</a>
                      </div>
                    </div>
                  </div>
                </div>

                <div id ="tabs"class="ui stackable grid">
                  <div class="column">
                    <!-- Recensioni Tab -->
                    <div class="ui tab active" data-tab="recensioni">
                      <div class="ui grid">
                        <div class="row">
                          <div class="column">

                            <!-- Reviews List -->
                            <div class="ui comments">
                              <div class="comment">
                                <a class="avatar">
                                  <img src="/images/avatar/small/stevie.jpg">
                                </a>
                                <div class="content">
                                  <a class="author">Stevie Feliciano</a>
                                  <div class="metadata">
                                    <div class="date">2 days ago</div>
                                    <div class="rating">
                                      <i class="star icon"></i>
                                      5 Faves
                                    </div>
                                  </div>
                                  <div class="text">
                                    Hey guys, I hope this example comment is helping you read this documentation.
                                  </div>
                                  <div class="actions">
                                    <a class="reply">Reply</a>
                                  </div>
                                  <form class="ui reply form">
                                    <div class="field">
                                      <textarea></textarea>
                                    </div>
                                    <div class="ui basic submit labeled icon button">
                                      <i class="icon edit"></i> Add Reply
                                    </div>
                                  </form>
                                </div>
                              </div>
                              <div class="comment">
                                <a class="avatar">
                                  <img src="/images/avatar/small/stevie.jpg">
                                </a>
                                <div class="content">
                                  <a class="author">Mario Rossi</a>
                                  <div class="metadata">
                                    <div class="date">2 days ago</div>
                                    <div class="rating">
                                      <i class="star icon"></i>
                                      1 Faves
                                    </div>
                                  </div>
                                  <div class="text">
                                    Hey guys, this place sucks
                                  </div>
                                  <div class="actions">
                                    <a class="reply">Reply</a>
                                  </div>
                                  <form class="ui reply form">
                                    <div class="field">
                                      <textarea></textarea>
                                    </div>
                                    <div class="ui basic submit labeled icon button">
                                      <i class="icon edit"></i> Add Reply
                                    </div>
                                  </form>
                                </div>
                              </div>
                              <div class="comment">
                                <a class="avatar">
                                  <img src="/images/avatar/small/stevie.jpg">
                                </a>
                                <div class="content">
                                  <a class="author">Luca Bianchi</a>
                                  <div class="metadata">
                                    <div class="date">2 days ago</div>
                                    <div class="rating">
                                      <i class="star icon"></i>
                                      2 Faves
                                    </div>
                                  </div>
                                  <div class="text">
                                    Brilliant Rest
                                  </div>
                                  <div class="actions">
                                    <a class="reply">Reply</a>
                                  </div>
                                  <form class="ui reply form">
                                    <div class="field">
                                      <textarea></textarea>
                                    </div>
                                    <div class="ui basic submit labeled icon button">
                                      <i class="icon edit"></i> Add Reply
                                    </div>
                                  </form>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- End Reviews List -->
                        </div>

                        <!-- Add a review textbox -->
                        <div class="sixteen wide column">
                          <div class="ui center aligned grid">
                            <div class="column">
                              <div class="ui segment">
                                <div class="ui header">Write a review</div>
                                <div class="ui large center rating" data-rating="1" data-max-rating="5"></div>
                                <div class="ui center comment">
                                  <form class="ui small reply form">
                                    <div class="field">
                                      <textarea></textarea>
                                    </div>
                                    <div class="ui basic submit labeled icon button">
                                      <i class="icon edit"></i> Add new review
                                    </div>
                                  </form>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- End Recensioni Tab -->
                    <!-- Mappa Tab -->
                    <div class="ui tab" data-tab="mappa">
                      <div class="ui center aligned grid">
                        <div id="map" class="column">
                          Mappa
                        </div>
                      </div>
                    </div>
                    <!-- End Mappa Tab -->
                    <!-- Reclama Tab -->
                    <div class="ui tab" data-tab="reclama">
                      <div class="ui center aligned grid">
                        <div class="column">
                          <button class="ui button">Conferma Reclamo</button>
                        </div>
                      </div>
                    </div>
                    <!-- End Reclama Tab -->
                    <!-- Add Image Tab -->
                    <div class="ui tab" data-tab="addimage">
                        <div class="ui center aligned grid">
                            <div class="column">
                                <button class="ui button add_image">Aggiungi Immagine</button>
                                <div class="ui modal">
                                    <div class="header center">
                                         Aggiungi Nuova Immagine
                                    </div>                                                            
                                    <div class="content">
                                    <div class="ui form">
                                        <div class="field">
                                             <input id="fileupload" type="file" name="files[]" data-url="server/php/" multiple >  
                                         </div>                                                                                               
                                    </div>
                                    </div>
                                    <div class="actions">
                                        <div class="ui close button">Close</div>
                                        <button class="ui button" type="submit">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Add Image Tab -->
                  </div>
                </div>
              </div>
 
            <script type="text/javascript">
                function initMap() {
                    var myLatLng = {lat: -25.363, lng: 131.044};

                    var map = new google.maps.Map(document.getElementById('map'), {
                      zoom: 4,
                      center: myLatLng
                    });

                    var marker = new google.maps.Marker({
                      position: myLatLng,
                      map: map,
                      title: 'Hello World!'
                    });

                }

            </script>
            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBbiud33G2KsodO5JvP-5HQzoSTuWiI0a8&callback=initMap"
  type="text/javascript"></script>

	</jsp:attribute>
                
                
		
</l:main>

