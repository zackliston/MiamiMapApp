//
//  Buildings.m
//  Miami U Map


#import "Buildings.h"
#import "Building.h"

@interface Buildings ()

@property (nonatomic, strong) NSDictionary* buildings;

@end


@implementation Buildings

- (id)init;
{
    self = [super init];
    
    if (self) {
        self.buildings = @{
            @"Admission" : [[Building alloc] initWithNumber:1 name:@"Admission" location:CLLocationCoordinate2DMake(39.506005, -84.738957)],
            @"Advancement Services" : [[Building alloc] initWithNumber:2 name:@"Advancement Services" location:CLLocationCoordinate2DMake(39.499237, -84.731906)],
            @"Airport" : [[Building alloc] initWithNumber:3 name:@"Airport" location:CLLocationCoordinate2DMake(39.50717, -84.783321)],
            @"Alexander Dining Hall" : [[Building alloc] initWithNumber:4 name:@"Alexander Dining Hall" location:CLLocationCoordinate2DMake(39.504264, -84.726928)],
            @"Alumni Hall" : [[Building alloc] initWithNumber:5 name:@"Alumni Hall" location:CLLocationCoordinate2DMake(39.50784, -84.736434)],
            @"Anderson Hall" : [[Building alloc] initWithNumber:6 name:@"Anderson Hall" location:CLLocationCoordinate2DMake(39.50212, -84.735592)],
            @"Art Building" : [[Building alloc] initWithNumber:7 name:@"Art Building" location:CLLocationCoordinate2DMake(39.505659, -84.731257)],
            @"Art Museum" : [[Building alloc] initWithNumber:8 name:@"Art Museum" location:CLLocationCoordinate2DMake(39.501098, -84.72931)],
            @"Bachelor Hall" : [[Building alloc] initWithNumber:9 name:@"Bachelor Hall" location:CLLocationCoordinate2DMake(39.507199, -84.73005)],
            @"Benton Hall" : [[Building alloc] initWithNumber:10 name:@"Benton Hall" location:CLLocationCoordinate2DMake(39.51075, -84.733886)],
            @"Beta Bell Tower" : [[Building alloc] initWithNumber:11 name:@"Beta Bell Tower" location:CLLocationCoordinate2DMake(39.509968, -84.735238)],
            @"Bell Tower Place" : [[Building alloc] initWithNumber:12 name:@"Bell Tower Place" location:CLLocationCoordinate2DMake(39.510166, -84.735556)],
            @"Billings Hall (BIL)" : [[Building alloc] initWithNumber:13 name:@"Billings Hall (BIL)" location:CLLocationCoordinate2DMake(39.513461, -84.734097)],
            @"Bishop Hall (BIS)" : [[Building alloc] initWithNumber:14 name:@"Bishop Hall (BIS)" location:CLLocationCoordinate2DMake(39.508229, -84.736973)],
            @"Bishop Woods" : [[Building alloc] initWithNumber:15 name:@"Bishop Woods" location:CLLocationCoordinate2DMake(39.509024, -84.731544)],
            @"Blanchard House (HCB)" : [[Building alloc] initWithNumber:16 name:@"Blanchard House (HCB)" location:CLLocationCoordinate2DMake(39.500947, -84.739116)],
            @"Bonham House (BON)" : [[Building alloc] initWithNumber:17 name:@"Bonham House (BON)" location:CLLocationCoordinate2DMake(39.506988, -84.736455)],
            @"Boyd Hall (BOY)" : [[Building alloc] initWithNumber:18 name:@"Boyd Hall (BOY)" location:CLLocationCoordinate2DMake(39.503155, -84.725159)],
            @"Brandon Hall (BRN)" : [[Building alloc] initWithNumber:19 name:@"Brandon Hall (BRN)" location:CLLocationCoordinate2DMake(39.514984, -84.734033)],
            @"Burkhouse Staff Development Center" : [[Building alloc] initWithNumber:20 name:@"Burkhouse Staff Development Center" location:CLLocationCoordinate2DMake(39.512219, -84.729613)],
            @"Campus Avenue Building" : [[Building alloc] initWithNumber:21 name:@"Campus Avenue Building" location:CLLocationCoordinate2DMake(39.506474, -84.738913)],
            @"Center for Performing Arts" : [[Building alloc] initWithNumber:22 name:@"Center for Performing Arts" location:CLLocationCoordinate2DMake(39.504869, -84.731885)],
            @"Central Receiving" : [[Building alloc] initWithNumber:23 name:@"Central Receiving" location:CLLocationCoordinate2DMake(39.508188, -84.726071)],
            @"Child Development Center" : [[Building alloc] initWithNumber:24 name:@"Child Development Center" location:CLLocationCoordinate2DMake(39.505622, -84.725652)],
            @"Clawson Hall (CLW)" : [[Building alloc] initWithNumber:25 name:@"Clawson Hall (CLW)" location:CLLocationCoordinate2DMake(39.504206, -84.726425)],
            @"Climer Guest Lodge" : [[Building alloc] initWithNumber:26 name:@"Climer Guest Lodge" location:CLLocationCoordinate2DMake(39.499802, -84.730716)],
            @"Cole Service Building" : [[Building alloc] initWithNumber:27 name:@"Cole Service Building" location:CLLocationCoordinate2DMake(39.508229, -84.726897)],
            @"Collins Hall (COL)" : [[Building alloc] initWithNumber:28 name:@"Collins Hall (COL)" location:CLLocationCoordinate2DMake(39.511656, -84.727004)],
            @"Cook Field" : [[Building alloc] initWithNumber:29 name:@"Cook Field" location:CLLocationCoordinate2DMake(39.509206, -84.729515)],
            @"Cook Place (COK)" : [[Building alloc] initWithNumber:30 name:@"Cook Place (COK)" location:CLLocationCoordinate2DMake(39.509339, -84.727058)],
            @"Cradle of Coaches Plaza" : [[Building alloc] initWithNumber:31 name:@"Cradle of Coaches Plaza" location:CLLocationCoordinate2DMake(39.51822, -84.732969)],
            @"Culinary Support Center" : [[Building alloc] initWithNumber:32 name:@"Culinary Support Center" location:CLLocationCoordinate2DMake(39.505945, -84.752208)],
            @"Culler Hall (CUL)" : [[Building alloc] initWithNumber:33 name:@"Culler Hall (CUL)" location:CLLocationCoordinate2DMake(39.507551, -84.732512)],
            @"Dennison Hall (DEN)" : [[Building alloc] initWithNumber:34 name:@"Dennison Hall (DEN)" location:CLLocationCoordinate2DMake(39.511002, -84.726135)],
            @"Disability Resources" : [[Building alloc] initWithNumber:35 name:@"Disability Resources" location:CLLocationCoordinate2DMake(39.506152, -84.738992)],
            @"Ditmer Parking Lot" : [[Building alloc] initWithNumber:36 name:@"Ditmer Parking Lot" location:CLLocationCoordinate2DMake(39.506516, -84.721618)],
            @"Dodds Hall (DOD)" : [[Building alloc] initWithNumber:37 name:@"Dodds Hall (DOD)" location:CLLocationCoordinate2DMake(39.503056, -84.73372)],
            @"Dogwood Grove" : [[Building alloc] initWithNumber:38 name:@"Dogwood Grove" location:CLLocationCoordinate2DMake(39.514222, -84.730281)],
            @"Dorsey Hall (DOR)" : [[Building alloc] initWithNumber:39 name:@"Dorsey Hall (DOR)" location:CLLocationCoordinate2DMake(39.503138, -84.733729)],
            @"East End" : [[Building alloc] initWithNumber:40 name:@"East End" location:CLLocationCoordinate2DMake(39.510241, -84.725769)],
            @"Elliott Hall (ELT)" : [[Building alloc] initWithNumber:41 name:@"Elliott Hall (ELT)" location:CLLocationCoordinate2DMake(39.508952, -84.735242)],
            @"Emerson Hall (EMR)" : [[Building alloc] initWithNumber:42 name:@"Emerson Hall (EMR)" location:CLLocationCoordinate2DMake(39.501715, -84.73197)],
            @"Engineering Building (EGB)" : [[Building alloc] initWithNumber:43 name:@"Engineering Building (EGB)" location:CLLocationCoordinate2DMake(39.510787, -84.732807)],
            @"Erickson Dining Hall" : [[Building alloc] initWithNumber:44 name:@"Erickson Dining Hall" location:CLLocationCoordinate2DMake(39.51111, -84.725779)],
            @"Ernst Nature Theater" : [[Building alloc] initWithNumber:45 name:@"Ernst Nature Theater" location:CLLocationCoordinate2DMake(39.501632, -84.724492)],
            @"Farmer School of Business (FSB)" : [[Building alloc] initWithNumber:46 name:@"Farmer School of Business (FSB)" location:CLLocationCoordinate2DMake(39.510572, -84.730146)],
            @"Field Hockey" : [[Building alloc] initWithNumber:47 name:@"Field Hockey" location:CLLocationCoordinate2DMake(39.519618, -84.735124)],
            @"Fisher Hall (HCF)" : [[Building alloc] initWithNumber:48 name:@"Fisher Hall (HCF)" location:CLLocationCoordinate2DMake(39.501524, -84.738184)],
            @"Flower Hall (FLW)" : [[Building alloc] initWithNumber:49 name:@"Flower Hall (FLW)" location:CLLocationCoordinate2DMake(39.516026, -84.732703)],
            @"Formal Gardens, Conrad" : [[Building alloc] initWithNumber:50 name:@"Formal Gardens, Conrad" location:CLLocationCoordinate2DMake(39.513924, -84.729463)],
            @"Freedom Summer ‘64 Memorial" : [[Building alloc] initWithNumber:51 name:@"Freedom Summer ‘64 Memorial" location:CLLocationCoordinate2DMake(39.501657, -84.725944)],
            @"Gaskill Hall (GAS)" : [[Building alloc] initWithNumber:52 name:@"Gaskill Hall (GAS)" location:CLLocationCoordinate2DMake(39.508031, -84.733497)],
            @"Glos Center (GGB)" : [[Building alloc] initWithNumber:53 name:@"Glos Center (GGB)" location:CLLocationCoordinate2DMake(39.500895, -84.731373)],
            @"Greenhouse, Belk" : [[Building alloc] initWithNumber:54 name:@"Greenhouse, Belk" location:CLLocationCoordinate2DMake(39.504074, -84.725386)],
            @"Hahne Hall (HNE)" : [[Building alloc] initWithNumber:55 name:@"Hahne Hall (HNE)" location:CLLocationCoordinate2DMake(39.515358, -84.732203)],
            @"Hall Auditorium (HAL)" : [[Building alloc] initWithNumber:56 name:@"Hall Auditorium (HAL)" location:CLLocationCoordinate2DMake(39.5089, -84.738541)],
            @"Hamilton Hall (HAM)" : [[Building alloc] initWithNumber:57 name:@"Hamilton Hall (HAM)" location:CLLocationCoordinate2DMake(39.505663, -84.73554)],
            @"Hanna House (HAN)" : [[Building alloc] initWithNumber:58 name:@"Hanna House (HAN)" location:CLLocationCoordinate2DMake(39.506948, -84.738147)],
            @"Hannon Park" : [[Building alloc] initWithNumber:59 name:@"Hannon Park" location:CLLocationCoordinate2DMake(39.521256, -84.732376)],
            @"Harris Dining Hall" : [[Building alloc] initWithNumber:60 name:@"Harris Dining Hall" location:CLLocationCoordinate2DMake(39.501991, -84.734654)],
            @"Harrison Hall (HRN)" : [[Building alloc] initWithNumber:61 name:@"Harrison Hall (HRN)" location:CLLocationCoordinate2DMake(39.508965, -84.736381)],
            @"Havighurst Hall (HAV)" : [[Building alloc] initWithNumber:62 name:@"Havighurst Hall (HAV)" location:CLLocationCoordinate2DMake(-84.7271505, 39.50534619)],
            @"Health Services Center (HSC)" : [[Building alloc] initWithNumber:63 name:@"Health Services Center (HSC)" location:CLLocationCoordinate2DMake(-84.7385369, 39.50470046)],
            @"Hepburn Hall (HEP)" : [[Building alloc] initWithNumber:64 name:@"Hepburn Hall (HEP)" location:CLLocationCoordinate2DMake(-84.7329779, 39.51440336)],
            @"Heritage Commons (HCC)" : [[Building alloc] initWithNumber:65 name:@"Heritage Commons (HCC)" location:CLLocationCoordinate2DMake(-84.7378385, 39.50152545)],
            @"Hiestand Hall (HIS)" : [[Building alloc] initWithNumber:66 name:@"Hiestand Hall (HIS)" location:CLLocationCoordinate2DMake(-84.7323775, 39.50559709)],
            @"Hoyt Hall (HYT)" : [[Building alloc] initWithNumber:67 name:@"Hoyt Hall (HYT)" location:CLLocationCoordinate2DMake(-84.7277784, 39.50329293)],
            @"Hughes Laboratories (HUG)" : [[Building alloc] initWithNumber:68 name:@"Hughes Laboratories (HUG)" location:CLLocationCoordinate2DMake(-84.7314228, 39.50943168)],
            @"Goggin (ICE)" : [[Building alloc] initWithNumber:69 name:@"Goggin (ICE)" location:CLLocationCoordinate2DMake(-84.7371648, 39.50375202)],
            @"Irvin Hall (IRV)" : [[Building alloc] initWithNumber:70 name:@"Irvin Hall (IRV)" location:CLLocationCoordinate2DMake(-84.7356564, 39.5078528)],
            @"Joyner House (JOY)" : [[Building alloc] initWithNumber:71 name:@"Joyner House (JOY)" location:CLLocationCoordinate2DMake(-84.7371823, 39.50702899)],
            @"King Library (KNG)" : [[Building alloc] initWithNumber:72 name:@"King Library (KNG)" location:CLLocationCoordinate2DMake(-84.7381462, 39.50877149)],
            @"Kreger Hall (KRG)" : [[Building alloc] initWithNumber:73 name:@"Kreger Hall (KRG)" location:CLLocationCoordinate2DMake(-84.7344691, 39.50793241)],
            @"Kumler Chapel (KUM)" : [[Building alloc] initWithNumber:74 name:@"Kumler Chapel (KUM)" location:CLLocationCoordinate2DMake(-84.7261887, 39.50225434)],
            @"Langstroth Cottage" : [[Building alloc] initWithNumber:75 name:@"Langstroth Cottage" location:CLLocationCoordinate2DMake(-84.7302459, 39.50667316)],
            @"Laws Hall (LWS)" : [[Building alloc] initWithNumber:76 name:@"Laws Hall (LWS)" location:CLLocationCoordinate2DMake(-84.732875, 39.50984983)],
            @"Lewis Place (LEW)" : [[Building alloc] initWithNumber:77 name:@"Lewis Place (LEW)" location:CLLocationCoordinate2DMake(39.510692, -84.736846)],
            @"Logan Lodge (HCL)" : [[Building alloc] initWithNumber:78 name:@"Logan Lodge (HCL)" location:CLLocationCoordinate2DMake(39.50147, -84.737699)],
            @"Lottie Moon House" : [[Building alloc] initWithNumber:79 name:@"Lottie Moon House" location:CLLocationCoordinate2DMake(39.510663, -84.737997)],
            @"MacCracken Hall (MAC)" : [[Building alloc] initWithNumber:80 name:@"MacCracken Hall (MAC)" location:CLLocationCoordinate2DMake(39.504144, -84.734569)],
            @"MacMillan Hall (MMH)" : [[Building alloc] initWithNumber:81 name:@"MacMillan Hall (MMH)" location:CLLocationCoordinate2DMake(39.50682, -84.733906)],
            @"Marcum Conference Ctr. (MCC)" : [[Building alloc] initWithNumber:82 name:@"Marcum Conference Ctr. (MCC)" location:CLLocationCoordinate2DMake(39.512918, -84.727665)],
            @"Marcum Nature Trail" : [[Building alloc] initWithNumber:83 name:@"Marcum Nature Trail" location:CLLocationCoordinate2DMake(39.513494, -84.726986)],
            @"Martin Dining Hall" : [[Building alloc] initWithNumber:84 name:@"Martin Dining Hall" location:CLLocationCoordinate2DMake(39.515292, -84.733306)],
            @"Mary Lyon Hall (LYN)" : [[Building alloc] initWithNumber:85 name:@"Mary Lyon Hall (LYN)" location:CLLocationCoordinate2DMake(39.503857, -84.727552)],
            @"McBride Hall (MCB)" : [[Building alloc] initWithNumber:86 name:@"McBride Hall (MCB)" location:CLLocationCoordinate2DMake(39.510619, -84.727061)],
            @"McFarland Hall (MCF)" : [[Building alloc] initWithNumber:87 name:@"McFarland Hall (MCF)" location:CLLocationCoordinate2DMake(39.514019, -84.73388)],
            @"McGuffey Hall (MCG)" : [[Building alloc] initWithNumber:88 name:@"McGuffey Hall (MCG)" location:CLLocationCoordinate2DMake(39.507813, -84.738254)],
            @"McGuffey Museum (MMU)" : [[Building alloc] initWithNumber:89 name:@"McGuffey Museum (MMU)" location:CLLocationCoordinate2DMake(39.506938, -84.735926)],
            @"McKee Hall (MCK)" : [[Building alloc] initWithNumber:90 name:@"McKee Hall (MCK)" location:CLLocationCoordinate2DMake(39.502971, -84.726257)],
            @"McKie Field at Hayden Park" : [[Building alloc] initWithNumber:91 name:@"McKie Field at Hayden Park" location:CLLocationCoordinate2DMake(39.513293, -84.732321)],
            @"Miami Inn (INN)" : [[Building alloc] initWithNumber:92 name:@"Miami Inn (INN)" location:CLLocationCoordinate2DMake(39.513343, -84.731002)],
            @"Millett Assembly Hall (MIL)" : [[Building alloc] initWithNumber:93 name:@"Millett Assembly Hall (MIL)" location:CLLocationCoordinate2DMake(39.517245, -84.734545)],
            @"Minnich Hall (MIN)" : [[Building alloc] initWithNumber:94 name:@"Minnich Hall (MIN)" location:CLLocationCoordinate2DMake(39.50557, -84.733657)],
            @"Molyneaux-Western Bell Tower" : [[Building alloc] initWithNumber:95 name:@"Molyneaux-Western Bell Tower" location:CLLocationCoordinate2DMake(39.501354, -84.726434)],
            @"Morris Hall (MOR)" : [[Building alloc] initWithNumber:96 name:@"Morris Hall (MOR)" location:CLLocationCoordinate2DMake(39.502615, -84.732415)],
            @"Murstein Alumni Center (MUR)" : [[Building alloc] initWithNumber:97 name:@"Murstein Alumni Center (MUR)" location:CLLocationCoordinate2DMake(39.499833, -84.730811)],
            @"North Chiller Plant" : [[Building alloc] initWithNumber:98 name:@"North Chiller Plant" location:CLLocationCoordinate2DMake(39.513208, -84.73399)],
            @"Ogden Hall (OGN)" : [[Building alloc] initWithNumber:99 name:@"Ogden Hall (OGN)" location:CLLocationCoordinate2DMake(39.509721, -84.735765)],
            @"Old Manse (OMN)" : [[Building alloc] initWithNumber:100 name:@"Old Manse (OMN)" location:CLLocationCoordinate2DMake(39.510684, -84.735433)],
            @"Panuska Development Ctr. (MUR)" : [[Building alloc] initWithNumber:101 name:@"Panuska Development Ctr. (MUR)" location:CLLocationCoordinate2DMake(39.499434, -84.731342)],
            @"Parking (Permits/Office) (CAB)" : [[Building alloc] initWithNumber:102 name:@"Parking (Permits/Office) (CAB)" location:CLLocationCoordinate2DMake(39.506493, -84.738831)],
            @"Campus Avenue Garage" : [[Building alloc] initWithNumber:103 name:@"Campus Avenue Garage" location:CLLocationCoordinate2DMake(39.503819, -84.738732)],
            @"North Campus Garage" : [[Building alloc] initWithNumber:104 name:@"North Campus Garage" location:CLLocationCoordinate2DMake(39.511362, -84.732555)],
            @"Patterson Place (PAT)" : [[Building alloc] initWithNumber:105 name:@"Patterson Place (PAT)" location:CLLocationCoordinate2DMake(39.505351, -84.729567)],
            @"Peabody Hall (PBD)" : [[Building alloc] initWithNumber:106 name:@"Peabody Hall (PBD)" location:CLLocationCoordinate2DMake(39.501278, -84.725742)],
            @"Pearson Hall (PSN)" : [[Building alloc] initWithNumber:107 name:@"Pearson Hall (PSN)" location:CLLocationCoordinate2DMake(39.511066, -84.731313)],
            @"Peffer Memorial Park" : [[Building alloc] initWithNumber:108 name:@"Peffer Memorial Park" location:CLLocationCoordinate2DMake(39.499388, -84.730835)],
            @"Phillips Hall (PHI)" : [[Building alloc] initWithNumber:109 name:@"Phillips Hall (PHI)" location:CLLocationCoordinate2DMake(39.50532, -84.737227)],
            @"Pines Lodge (HCP)" : [[Building alloc] initWithNumber:110 name:@"Pines Lodge (HCP)" location:CLLocationCoordinate2DMake(39.500895, -84.738501)],
            @"Police Services Center (PSC)" : [[Building alloc] initWithNumber:111 name:@"Police Services Center (PSC)" location:CLLocationCoordinate2DMake(39.507282, -84.720857)],
            @"Porter Hall (POR)" : [[Building alloc] initWithNumber:112 name:@"Porter Hall (POR)" location:CLLocationCoordinate2DMake(39.503134, -84.735575)],
            @"Presser Hall (PRS)" : [[Building alloc] initWithNumber:113 name:@"Presser Hall (PRS)" location:CLLocationCoordinate2DMake(39.503734, -84.729671)],
            @"Psychology Building (PSY)" : [[Building alloc] initWithNumber:114 name:@"Psychology Building (PSY)" location:CLLocationCoordinate2DMake(39.511787, -84.731452)],
            @"Pulley Tower, Verlin L." : [[Building alloc] initWithNumber:115 name:@"Pulley Tower, Verlin L." location:CLLocationCoordinate2DMake(39.508055, -84.730012)],
            @"Recreational Sports Ctr. (RSC)" : [[Building alloc] initWithNumber:116 name:@"Recreational Sports Ctr. (RSC)" location:CLLocationCoordinate2DMake(39.502642, -84.737844)],
            @"Reid Hall (HCR)" : [[Building alloc] initWithNumber:117 name:@"Reid Hall (HCR)" location:CLLocationCoordinate2DMake(39.500812, -84.736637)],
            @"Richard Hall (RIC)" : [[Building alloc] initWithNumber:118 name:@"Richard Hall (RIC)" location:CLLocationCoordinate2DMake(39.504397, -84.735559)],
            @"Robertson Hall (ROB)" : [[Building alloc] initWithNumber:119 name:@"Robertson Hall (ROB)" location:CLLocationCoordinate2DMake(39.507857, -84.734094)],
            @"Roudebush Hall (RDB)" : [[Building alloc] initWithNumber:120 name:@"Roudebush Hall (RDB)" location:CLLocationCoordinate2DMake(39.509432, -84.734507)],
            @"Rowan Hall (ROW)" : [[Building alloc] initWithNumber:121 name:@"Rowan Hall (ROW)" location:CLLocationCoordinate2DMake(39.507472, -84.733115)],
            @"Sawyer Hall (SAW)" : [[Building alloc] initWithNumber:122 name:@"Sawyer Hall (SAW)" location:CLLocationCoordinate2DMake(39.501214, -84.724492)],
            @"Scott Hall (SCT)" : [[Building alloc] initWithNumber:123 name:@"Scott Hall (SCT)" location:CLLocationCoordinate2DMake(39.504419, -84.733665)],
            @"Sesquintennial Chapel" : [[Building alloc] initWithNumber:124 name:@"Sesquintennial Chapel" location:CLLocationCoordinate2DMake(39.506839, -84.733238)],
            @"Shideler Hall" : [[Building alloc] initWithNumber:125 name:@"Shideler Hall" location:CLLocationCoordinate2DMake(39.507517, -84.731305)],
            @"Shriver Center" : [[Building alloc] initWithNumber:126 name:@"Shriver Center" location:CLLocationCoordinate2DMake(39.506565, -84.731736)],
            @"Simpson-Shade Guest House" : [[Building alloc] initWithNumber:127 name:@"Simpson-Shade Guest House" location:CLLocationCoordinate2DMake(39.510696, -84.737347)],
            @"Shouth Chiller Plant" : [[Building alloc] initWithNumber:128 name:@"Shouth Chiller Plant" location:CLLocationCoordinate2DMake(39.501234, -84.734461)],
            @"Stables John W. Browne" : [[Building alloc] initWithNumber:129 name:@"Stables John W. Browne" location:CLLocationCoordinate2DMake(39.508635, -84.724343)],
            @"Stancote House" : [[Building alloc] initWithNumber:130 name:@"Stancote House" location:CLLocationCoordinate2DMake(39.506367, -84.730085)],
            @"Stanton Hall" : [[Building alloc] initWithNumber:131 name:@"Stanton Hall" location:CLLocationCoordinate2DMake(39.502368, -84.733754)],
            @"Steam Plant" : [[Building alloc] initWithNumber:132 name:@"Steam Plant" location:CLLocationCoordinate2DMake(39.500754, -84.724612)],
            @"Stillman-Kelly Studio" : [[Building alloc] initWithNumber:133 name:@"Stillman-Kelly Studio" location:CLLocationCoordinate2DMake(39.500754, -84.724612)],
            @"Steam Plant" : [[Building alloc] initWithNumber:134 name:@"Steam Plant" location:CLLocationCoordinate2DMake(39.500864, -84.724613)],
            @"Stillman-Kelley Studio" : [[Building alloc] initWithNumber:135 name:@"Stillman-Kelley Studio" location:CLLocationCoordinate2DMake(39.504469, -84.729655)],
            @"Stoddard Hall (STD)" : [[Building alloc] initWithNumber:136 name:@"Stoddard Hall (STD)" location:CLLocationCoordinate2DMake(39.508399, -84.735264)],
            @"Student Athlete Development Center" : [[Building alloc] initWithNumber:137 name:@"Student Athlete Development Center" location:CLLocationCoordinate2DMake(39.517698, -84.733268)],
            @"Swing Hall (SWG)" : [[Building alloc] initWithNumber:138 name:@"Swing Hall (SWG)" location:CLLocationCoordinate2DMake(39.511412, -84.734124)],
            @"Symmes Hall (SYM)" : [[Building alloc] initWithNumber:139 name:@"Symmes Hall (SYM)" location:CLLocationCoordinate2DMake(39.51194, -84.72972)],
            @"Tallawanda Hall (HCT)" : [[Building alloc] initWithNumber:140 name:@"Tallawanda Hall (HCT)" location:CLLocationCoordinate2DMake(39.500918, -84.737394)],
            @"Tappan Hall (TAP)" : [[Building alloc] initWithNumber:141 name:@"Tappan Hall (TAP)" location:CLLocationCoordinate2DMake(39.502584, -84.731431)],
            @"Tennis Courts" : [[Building alloc] initWithNumber:142 name:@"Tennis Courts" location:CLLocationCoordinate2DMake(39.51447, -84.731976)],
            @"Thomson Hall (TOM)" : [[Building alloc] initWithNumber:143 name:@"Thomson Hall (TOM)" location:CLLocationCoordinate2DMake(39.504653, -84.725235)],
            @"Rider Track & Field" : [[Building alloc] initWithNumber:144 name:@"Rider Track & Field" location:CLLocationCoordinate2DMake(39.5218, -84.73308)],
            @"Upham Hall (UPH)" : [[Building alloc] initWithNumber:145 name:@"Upham Hall (UPH)" location:CLLocationCoordinate2DMake(39.508678, -84.733057)],
            @"Warfield Hall (WAR)" : [[Building alloc] initWithNumber:146 name:@"Warfield Hall (WAR)" location:CLLocationCoordinate2DMake(39.50693, -84.735178)],
            @"Wells Hall (WEL)" : [[Building alloc] initWithNumber:147 name:@"Wells Hall (WEL)" location:CLLocationCoordinate2DMake(39.506748, -84.737498)],
            @"Western Lodge (LNS)" : [[Building alloc] initWithNumber:148 name:@"Western Lodge (LNS)" location:CLLocationCoordinate2DMake(39.500363, -84.726437)],
            @"Western Maint. Bldg." : [[Building alloc] initWithNumber:149 name:@"Western Maint. Bldg." location:CLLocationCoordinate2DMake(39.50099, -84.725109)],
            @"Williams Hall (WIH)" : [[Building alloc] initWithNumber:150 name:@"Williams Hall (WIH)" location:CLLocationCoordinate2DMake(39.506425, -84.736823)],
            @"Wilson Hall (WIL)" : [[Building alloc] initWithNumber:151 name:@"Wilson Hall (WIL)" location:CLLocationCoordinate2DMake(39.509935, -84.726704)],
            @"Withrow Court (WTH)" : [[Building alloc] initWithNumber:152 name:@"Withrow Court (WTH)" location:CLLocationCoordinate2DMake(39.512476, -84.734032)],
            @"Yager Stadium" : [[Building alloc] initWithNumber:153 name:@"Yager Stadium" location:CLLocationCoordinate2DMake(39.519480, -84.732947)]
        };
    }
    
    return self;
}

- (Building*)buildingForName:(NSString*)buildingName;
{
    return [self.buildings objectForKey:buildingName];
}

- (CLLocationCoordinate2D)locationForBuilding:(NSString*)buildingName;
{
    Building* building = [self.buildings objectForKey:buildingName];
    return building.coordinate;
}

- (NSUInteger)count;
{
    return self.buildings.count;
}

- (NSArray*)orderedNames;
{
    NSArray* sortedBuildingNames = [[self.buildings allKeys] sortedArrayUsingComparator:^NSComparisonResult(NSString* buildingName1, NSString* buildingName2) {
        return [buildingName1 compare:buildingName2];
    }];
    
    return sortedBuildingNames;
}

@end
