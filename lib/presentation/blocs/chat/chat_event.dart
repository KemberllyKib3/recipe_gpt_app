abstract class ChatEvent {}

class ChatStartedEvent extends ChatEvent {}

class ChatRegenerateEvent extends ChatEvent {}

class ChatSendMessageEvent extends ChatEvent {}

class ChatClosedEvent extends ChatEvent {}
