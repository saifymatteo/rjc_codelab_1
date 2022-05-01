import '../models/mount_model.dart';

abstract class MountRepo {
  static final List<MountModel> mountItems = [
    MountModel(
        path:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Sumberurip_Pronojiwo_%28cropped%29.jpg/1024px-Sumberurip_Pronojiwo_%28cropped%29.jpg',
        name: 'Mount Semeru',
        description:
            'Semeru, or Mount Semeru, is an active volcano in East Java, Indonesia. It is located in the subduction zone, where the Indo-Australia plate subducts under the Eurasia plate. It is the highest mountain on the island of Java.',
        location: 'East Java'),
    MountModel(
        path:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Gunung_Merbabu_2.jpg/1024px-Gunung_Merbabu_2.jpg',
        name: 'Mount Merbaru',
        description:
            'Mount Merbabu is a dormant stratovolcano in Central Java province on the Indonesian island of Java. The name Merbabu could be loosely translated as Mountain of Ash from the Javanese combined words; Meru means mountain and awu or abu means ash.',
        location: 'Central Java'),
    MountModel(
        path:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Mauna_Kea_from_Mauna_Loa_Observatory%2C_Hawaii_-_20100913.jpg/1024px-Mauna_Kea_from_Mauna_Loa_Observatory%2C_Hawaii_-_20100913.jpg',
        name: 'Mauna Loa',
        description:
            'Mauna Loa is one of five volcanoes that form the Island of Hawaii in the U.S. state of Hawai in the Pacific Ocean. The largest subaerial volcano in both mass and volume, Mauna Loa has historically been considered the largest volcano on Earth, dwarfed only by Tamu Massif.',
        location: 'Hawaii'),
    MountModel(
        path:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Mount_Vesuvius_in_Naples%2C_Italy%2C_Napoli1.jpg/1024px-Mount_Vesuvius_in_Naples%2C_Italy%2C_Napoli1.jpg',
        name: 'Mount Vesuvius',
        description:
            'Mount Vesuvius is a somma-stratovolcano located on the Gulf of Naples in Campania, Italy, about 9 km east of Naples and a short distance from the shore. It is one of several volcanoes which form the Campanian volcanic arc.',
        location: 'Italy'),
    MountModel(
        path:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/PopoAmeca2zoom.jpg/1024px-PopoAmeca2zoom.jpg',
        name: 'Mount Popocatépetl',
        description:
            'Popocatépetl is an active stratovolcano located in the states of Puebla, Morelos, and Mexico in central Mexico. It lies in the eastern half of the Trans-Mexican volcanic belt. At 5,426 m it is the second highest peak in Mexico, after Citlaltépetl at 5,636 m.',
        location: 'Mexico')
  ];
}
