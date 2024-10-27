-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 06:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sarawakgoparks_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fbID` int(11) NOT NULL,
  `fb_rating` double NOT NULL,
  `fb_comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` int(11) NOT NULL,
  `local_name` varchar(255) DEFAULT NULL,
  `scientific_name` varchar(255) DEFAULT NULL,
  `family` varchar(255) DEFAULT NULL,
  `other_common_name` varchar(255) DEFAULT NULL,
  `botanical_description` text DEFAULT NULL,
  `ecology` text DEFAULT NULL,
  `distribution` text DEFAULT NULL,
  `conservation_status` varchar(255) DEFAULT NULL,
  `uses` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`id`, `local_name`, `scientific_name`, `family`, `other_common_name`, `botanical_description`, `ecology`, `distribution`, `conservation_status`, `uses`) VALUES
(1, 'Jampang serang', 'Melicope accedens (Blume) T.G. Hartley', 'Rutaceae', 'Serang besai (Iban)', 'Tree or shrub up to 40 m tall. The young branchlets and terminal buds are glabrous to hairy or velvety.', 'In Sarawak, it is common in primary and secondary forests, swamp forests, heath forests, peat swamp forests and along forest edges.', 'Andaman Islands to east of Vietnam and south to Peninsular Malaysia, Borneo and Java. ', 'Listed as Least Concern (LC) under the IUCN Red List of Threatened Species', 'In Malaysia and Indonesia, the leaves are applied externally to decrease fever.'),
(2, 'Terentang putih', 'Campnosperma coriaceum (Jack) Hallier f.', 'Anacardiaceae', 'Terentang paya (Iban/Malay), Gerat (Melanau Oya), Betangan (Melanau Rejang)', 'Big tree up to 36 m tall with short buttresses, stilt roots, and looped pneumatophores. Its fruits are ripening black.', 'Found at peat swamp and freshwater swamp forests and often gregarious', 'It is common and widely distributed in Sarawak', NULL, NULL),
(3, 'Perupok', 'Euonymus glandulosus (Merr.) Ding Hou', 'Celastraceae', 'Perupok nyamus gunung (Iban)', 'It is a small tree up to 5 m tall. Leaves are papery to leathery. The flowers are white or dark purple. Fruits are yellow while young and it is ripening red.', 'Hill and montane forests at 900 – 2700 m', 'Borneo and Philippines; widely distributed in Sarawak', NULL, NULL),
(4, 'Meranti paya bersisik', 'Shorea scaberrima Bruck', 'Dipterocarpaceae', 'Red meranti', 'It is a big tree and one of the main canopy trees that can attain height up to 40 m tall with buttresses up to 1.5 m tall. Crown is dense and more or less hemispherical. ', 'Common in MDF on shallowly humid leached sandy clay and well-drained skeletal clay soils. ', 'Native to Borneo, well represented in a network of Totally Protected Areas (TPAs) and Forest Management Units (FMUs) in Sarawak.', 'Listed as Least Concern (LC) under the Sarawak Plant Red List Series I', 'As timber'),
(5, 'Seladah', 'Dacryodes macrocarpa (King) H.J.Lam', 'Burseraceae', 'Seladah (Iban/Malay)', 'These trees with stilt roots come with a height that ranges around from 25 meters to 40 meters and once fully mustered, its bole can reach up to 65 cm. It has a ‘cracked’ bark with a reddish color to it.', 'Peat swamp forest, Mixed Dipterocarp Forest, Kerangas Forest', 'Peninsular Malaysia, Sumatera and Borneo, Philippines', NULL, 'Timber as construction materials, the fruits are edible.'),
(6, 'Nyalin', 'Xanthophyllum flavescens Roxb.', 'Polygalaceae', 'Nyalin lubang hidung (Iban), Tabulo/Lamble (Kayan), Sabetong (Penan)', 'Shrub, treelet, short buttresses, understorey or canopy tree that is up to 30 m tall and it produces pale, yellowish sapwood. Leaves drying grey-green to bright yellow-green. Fruits are yellowish to brownish, globular up to 2cm across. ', 'Found at MDF and montane forest at an altitude of 1500 m, on flat lands and along streams or on ridges', 'Continental SE Asia ad W Malesia: Sumatra, Peninsular Malaysia, Java, Borneo (the most common species; Sabah, Sarawak, Brunei, and Kalimantan), and the Philippines. ', NULL, 'Its woods are used locally for construction purposes and its leaves can be cooked and consumed.'),
(7, 'Daun isang', 'Licuala orbicularis Becc.', 'Arecaceae', 'Gerenis', 'Solitary palm with wide, circular fan-shaped leaf', 'Found in the primary and secondary forest; mainly understory, protected from direct sunlight and prefer high humidity and warm environment.', 'Endemic to Sarawak', 'Vulnerable (VU) in IUCN Red List Categories & Criterion ver. 3.1; It is listed as Protected Plant under the Wild Life Protection Ordinance, 1998', 'Due to its unique look, it is a highly demanded ornamental plant but the locals use it to make hats, temporary thatches, and specially to wrap cooked rice. On some occasions, it is even used as a disposable umbrella'),
(8, 'Rengas', 'Gluta wallichii (Hook.f.) Ding Hou', 'Anacardiaceae', 'Rengas (Iban/Malay)', 'Medium-sized to large tree to 36 m tall with short buttresses. It produces whitish sap that turns black on exposure. The sap can irritate the skin. Fruits with wings. ', 'Ecologically, it is found on lowland including swamp to hill forests 500 m.', 'Common and widely distributed in Sabah and Sarawak, also in Brunei and Kalimantan.', 'Listed as Least Concern (LC) in the IUCN Red list', 'Wood is often used for construction material in carpentry and furniture.'),
(9, 'Nyakau', 'Areca insignis (Becc.) J.Dransf.', 'Arecaceae', NULL, 'A small, solitary palm from the undergrowth of the rainforest. The few flat, arching leaves hold narrow leaflets that are angled towards the base of the leaf and are longest towards the tip.', 'Lowland mixed dipterocarp forest', 'Borneo, widespread in Sarawak and Brunei ', 'Not Evaluated (NE) in the IUCN Red List Categories & Criterion ver. 3.1', 'The palm cabbage is harvested by the Penans for food'),
(10, 'Gerenis (Iban)', 'Licuala bidentata Becc.', 'Arecaceae', 'Palas (Malay)', 'A very pretty stemless, dwarf palmlet grows to 50 cm tall and has small fan-shaped leaves with white centers that are split into few broad segments. It is often found growing gregariously dominating the forest floor of Kerangas and sandstone, often on ridges.', 'Requires humid tropical conditions, partial shades or filtered light.', 'Endemic to Borneo; in Kuching and Lundu Districts in Sarawak', 'It is listed as Least Concern (LC) under the IUCN Red List Categories and Criterion version 3.1.', NULL),
(11, 'Pinang', 'Areca furcata Becc.', 'Arecaceae', NULL, 'A clustering palm, around 2 m tall with multiple stems. ', 'Mixed dipterocarp forest to Montane forest', 'It is widespread in Northern & central parts of Sarawak. In term of endemicity, it is endemic to Sarawak (Northern & central parts).', 'Not Evaluated (NE) in IUCN Red List Categories and Criteria version.', NULL),
(12, 'Bunsi/Bakinang babi', 'Microcos cinnamomifolia Burret', 'Malvaceae', 'Bunsi tija (Iban)', 'Mid-canopy tree up to 31m tall. Flower yellow. Fruit yellowish-orange to red.', 'Found in Mixed Dipterocarp forests and Kerangas forests. This plant thrives on hillsides and ridges with sandy soil and clay and limestone.', 'Endemic to Borneo', NULL, NULL),
(13, 'Gerenis', 'Licuala petiolulata Becc.', 'Arecaceae', 'Biru’ (Iban), Da’un (Penan)', 'The palm has circular leaves with about 20 narrow segments. ', 'In Borneo; in the lower montane forest of mixed dipterocarp forest on various soil types. ', 'It can be found around Southeast Asia.', 'Least Concern (LC) in IUCN Red List Categories & Criterion Version 3.1', 'Leaves are used as ritual decoration during the Gawai festival; the skin of the petioles is used for weaving baskets of various types and the cabbage and fruits are edible'),
(14, 'Terbulan', 'Endospermum diadenum (Miq.) Airy Shaw', 'Euphorbiaceae', 'Terbulan mit (Iban), Entabulan/Antah bulan', 'Tree from 15 m to 35 m tall, 30 cm to 65 cm in diameter. Sometimes the buttresses are thick and 2 m tall.', 'Primary and secondary forests, occasionally in places permanently submerged by freshwater, are sometimes found along streams ', 'Peninsular Malaysia, Borneo, Thailand, Sumatera', 'Listed as Least Concern (LC) in the IUCN Red list', 'It is a commercial source of timber and commonly harvested from the wild for both local uses and for trade.'),
(15, 'Ridan', 'Salacca vermicularis Becc.', 'Arecaceae', 'Sum (Penan)', 'It is a big, stemmed palm with spikes along its petioles (stalks). The fruit grows in clusters at the base of the plants with a reddish-brown scaly skin covering a white pulp and one to two large inedible seeds.', 'Riparian forest', 'Borneo’s native species with habitats both in Malaysia and Indonesia. ', NULL, 'Fruits and cabbage are edible; petiole skins are used in basket weaving'),
(16, 'Bulu Manok ', 'Meliosma sumatrana (Jack) Walp.', 'Sabiaceae', 'Bulu manok besai (Iban), Marber (Bidayuh Tebedu)', 'Medium-sized tree up to 25m tall. Sapwood whitish to yellowish. Fruit yellow to red and becoming black when ripe, sweetish to tasteless. ', 'Lowland and montane tropical forests. Found on many soil types, both dry and wet areas, in dense and open forests, along streams as well as on hill-tops and ridges', 'Java, Sumatra, Peninsular Malaysia, Borneo, Celebes, and Mindanao', 'Listed as Least Concern (LC) under IUCN Red list', 'The tree is collected for local purposes such as food and medicine. It has been suggested for use in reforestation initiatives due to rapid growth.'),
(17, 'Medang kasap ', 'Xanthophyllum griffithii A.W. Benn', 'Polygalaceae', 'Nyalin mit (Iban)', 'Tree up to 27 m tall and 40 cm diameter and it produces pale, yellowish sapwood.', 'Lowland Mixed Dipterocarp forests, riparian forests, lower montane forests and Kerangas forests', 'It is widespread in Southeast Asia and Malesia. Two varieties occur in Sabah and Sarawak; Xanthophyllum griffithii var. angustifolium and Xanthophyllum griffithii var. papillosum (Endemic to Sarawak)', NULL, NULL),
(18, 'Selangan merah (Iban/Malay)', 'Rubroshorea kunstleri (King) P.S. Ashton & J.Heck.', 'Dipterocarpaceae', 'Red meranti ', 'Large emergent tree up to 55m tall, 1.9 m in diameter; crown large, cauliflower-shaped. Sapwood hard: heartwood dark reddish brown. ', 'They mostly grow in lowland to hill Mixed Dipterocarp Forest (MDF) on yellow sandy and sandy clay', 'Sumatra, Peninsular Malaysia and Borneo (Sabah, Sarawak, Brunei, Kalimantan).', 'It is listed as Least Concern (LC) under the Sarawak Plant Red List Series I', 'It is commonly traded for its wood because the wood is durable and resistant to dry borers. The wood is suitable for light construction, flooring and musical instruments.'),
(19, 'Pinang mureng', 'Pinanga angustisecta Becc.', 'Arecaceae', 'Levuyuh (Penan)', 'It’s a solitary palm, up to 2 m tall. Its peduncle reddish and its calyx is brown. Fruits greenish, reddish at apex.', 'Riparian forest', 'Native to Borneo.', NULL, 'The cabbage is eaten as vegetable by the Penan community.'),
(20, 'Meranti sarang punai', 'Rubroshorea parvifolia (Dyer) P.S.Ashton & J.Heck.', 'Dipterocarpaceae', 'Dangar burau/Dungar siak/Planuk (Lun Bawang), Kelangah iman (Kenyah/Kayan/Berawan), Abang suma (Bidayuh Padawan), Red Meranti ', 'Large emergent tree up to 65 m tall and to 2 m diameter. The crown is immense and cauliflower-shaped', 'It is widespread and common throughout Sarawak, in Mixed Dipterocarp Forest (MDF) on yellow clay soils, usually well-drained area.', 'Sumatra, Peninsular Malaysia and Borneo (Sabah & Sarawak). ', 'It is listed as Least Concern (LC) under the Sarawak Plant Red List Series I', 'The timber is used for several purposes for light carpentry, boxes, and veneer'),
(21, 'Ekor buaya', 'Johannesteijsmannia altifrons Rchb.f. & Zoll.) H.E.Moore', 'Arecaceae', 'Simbang buaya', 'A medium-sized, stemless palm that can grows up to 6 m tall. The leaves are large and long, in the shape of crocodile’s tail and arranged like feathers of a giant shuttlecock.', 'It grows well at both lowland and hill Mixed Dipterocarp forest', 'It is native to Southern Thailand, Peninsular Malaysia, Borneo and Sumatra', 'It is listed as Protected Plant under the Wild Life Protection Ordinance, 1998', 'In some communities, the leaves are used to make roof thatch or as temporary shelters in the forest');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fbID`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fbID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
