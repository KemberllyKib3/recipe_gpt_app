abstract class ApplicationEvent {}

class ApplicationStartedEvent extends ApplicationEvent {}

class ApplicationLoggedInEvent extends ApplicationEvent {}

class ApplicationLoggedOutEvent extends ApplicationEvent {}
