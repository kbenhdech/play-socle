package controllers;

import play.*;
import play.mvc.*;

public class Application extends Controller {

    public static Result index() {
        return ok(views.html.index.render());
    }

		public static Result fullcalendarExample() {
			return ok(views.html.examples.fullcalendar.render());
		}

}
