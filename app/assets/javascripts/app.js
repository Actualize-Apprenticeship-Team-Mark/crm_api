/* global Vue */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      leads: [],
      events: "",
      searchTerm: "",
      time_format: "12/25/17",
      url: "https://www.google.com/"
    },
    mounted: function() {
      $.get('/api/v1/leads.json' + this.$searchTerm).success(function(response) {
        console.log(this);
        this.leads = response;
      }.bind(this));
    },
    methods: {
      moment: function(date) {
        return moment(date);
      },
      validLead: function(inputName) {
        var validFirstName = inputName.first_name.toLowerCase().includes(this.searchTerm.toLowerCase());
        var validLastName = inputName.last_name.toLowerCase().includes(this.searchTerm.toLowerCase());
        var validEmail = inputName.email.toLowerCase().includes(this.searchTerm.toLowerCase());
        return validFirstName || validLastName || validEmail;
      },
      eventHistory: function(event) {
        console.log('Still here onclick');

        
      }
    },
    computed: {
    }
  });
});
