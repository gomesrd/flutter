import '../model/contact_model.dart';

class GenerateContact {
  static List<Contact> generateContactData() {
    List<Contact> list = [];
    list.add(Contact('João da Silva', 'joao@email.com', '(12) 3456-7899',
        'https://randomuser.me/api/portraits/men/9.jpg', 'Rua das Flores, 123'));
    list.add(Contact("Alice Silva", "alice.silva@example.com", "11987654321",
        "https://randomuser.me/api/portraits/women/21.jpg", "Rua das Rosas, 456"));
    list.add(Contact("Bruno Costa", "bruno.costa@example.com", "11976543210",
        "https://randomuser.me/api/portraits/men/21.jpg", "Rua das Margaridas, 789"));
    list.add(Contact("Carla Mendes", "carla.mendes@example.com", "11965432109",
        "https://randomuser.me/api/portraits/women/22.jpg", "Rua das Violetas, 987"));
    list.add(Contact("Daniel Oliveira", "daniel.oliveira@example.com", "11954321098",
        "https://randomuser.me/api/portraits/men/22.jpg", "Rua das Tulipas, 654"));
    list.add(Contact("Elisa Fernandes", "elisa.fernandes@example.com", "11943210987",
        "https://randomuser.me/api/portraits/women/23.jpg", "Rua das Orquídeas, 321"));
    list.add(Contact("Fabio Lima", "fabio.lima@example.com", "11932109876",
        "https://randomuser.me/api/portraits/men/23.jpg", "Rua das Hortênsias, 987"));
    list.add(Contact("Gabriela Rocha", "gabriela.rocha@example.com", "11921098765",
        "https://randomuser.me/api/portraits/women/24.jpg", "Rua das Bromélias, 654"));
    list.add(Contact("Henrique Souza", "henrique.souza@example.com", "11910987654",
        "https://randomuser.me/api/portraits/men/24.jpg", "Rua das Begônias, 321"));
    list.add(Contact("Isabela Ramos", "isabela.ramos@example.com", "11909876543",
        "https://randomuser.me/api/portraits/women/25.jpg", "Rua das Azaléias, 987"));
    list.add(Contact("Jorge Martins", "jorge.martins@example.com", "11908765432",
        "https://randomuser.me/api/portraits/men/25.jpg", "Rua das Amarílis, 654"));
    list.add(Contact("Karina Silva", "karina.silva@example.com", "11907654321",
        "https://randomuser.me/api/portraits/women/26.jpg", "Rua das Acácias, 321"));
    list.add(Contact("Leonardo Costa", "leonardo.costa@example.com", "11906543210",
        "https://randomuser.me/api/portraits/men/26.jpg", "Rua das Acácias, 321"));
    list.add(Contact("Mariana Oliveira", "mariana.oliveira@example.com", "11905432109",
        "https://randomuser.me/api/portraits/women/27.jpg", "Rua das Acácias, 321"));
    list.add(Contact("Nicolas Mendes", "nicolas.mendes@example.com", "11904321098",
        "https://randomuser.me/api/portraits/men/27.jpg", "Rua das Acácias, 321"));
    list.add(Contact("Olivia Lima", "olivia.lima@example.com", "11903210987",
        "https://randomuser.me/api/portraits/women/28.jpg", "Rua das Acácias, 321"));
    return list;
  }
}
