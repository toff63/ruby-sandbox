# Dependency injection

The goal is to be able to test without having to connect to a database or a webservice. In this example the model stores cars and would store them in a database. In order to test the controller, we want to mock the model. We assume there is no logic in the model so we can safely mock it.

To decide what version of the model the controller use, we inverse the control ([IoC](https://martinfowler.com/articles/injection.html))): we don't let the controller decide which version of the model it will use, we give this this responsability to the instanciator.

Instances are created in a [Module] to re-use Guice nomenclature and then we mix it in the controller.

To test, we create a model mock and test module. Extending the controller and mixing it with the test module we have a class with the initial controller logic and a mocked model.
