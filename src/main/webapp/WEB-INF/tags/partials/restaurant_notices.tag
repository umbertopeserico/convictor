<%-- 
    Document   : restaurant_notices
    Created on : 22-giu-2016, 14.15.20
    Author     : Giovanni M Riva
--%>

<%@tag description="restaurant owner notifications list partial" pageEncoding="UTF-8"%>

<div class="ui container">

    <div class="ui stackable two column equal width center aligned grid">
      <!-- My Restaurants list-->
      <div class="stretched column">
        <div class="ui segment">
          <div class="text"> <h2> I miei ristoranti: </h2> </div>

          </br>

          <a class="text" href="#"> <h3> Ristorante 1 <h3> </a>
          <a class="text" href="#"> <h3> Ristorante 2 <h3> </a>
          <a class="text" href="#"> <h3> Ristorante 3 <h3> </a>
          <a class="text" href="#"> <h3> Ristorante 4 <h3> </a>

        </div>
      </div>
      <!-- END My Restaurants list-->
      
      <!-- Notifications list-->      
      <div class="stretched column">
          <div class="center text"> <h2> Notifiche </h2> </div>
        </br>

        <div class="ui one column center aligned grid">
          <div class="row">
              <div class="column">
                  <div class="ui buttons">
                      <div class="ui button">
                          <i class="left arrow icon"></i>
                      </div>
                  </div>
                  <div class="ui button">                      
                        <i class="right arrow icon"></i>                      
                  </div>
                      <div class="ui basic label">
                        2,048
                  </div>
              </div>  
          </div>        
            <div class="column">
              <div class="ui segment feed">
                <div class="event">
                  <div class="content">
                    <div class="date">
                      Ieri
                    </div>
                    <div class="summary">
                      <a>Utente</a> ha recensito <a>Ristorante</a>
                    </div>
                    <div class="extra">
                      <div class="ui right floated buttons">
                        <button class="ui basic black button">Visualizza</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="ui segment feed">
                <div class="event">
                  <div class="content">
                    <div class="date">
                      Ieri
                    </div>
                    <div class="summary">
                      <a>Utente</a> ha aggiunto una foto a <a>Ristorante</a>
                    </div>
                    <div class="extra">
                      <div class="ui right floated buttons">
                        <button class="ui basic black button">Visualizza</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
      <!-- END Notifications list-->

    </div>
</div>