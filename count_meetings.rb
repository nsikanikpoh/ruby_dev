def countMeetings(arrival, departure)
    # Write your code here
    times = []
    din = departure.index(departure.min)
    ain = arrival.index(arrival.min)
    start_index = din
    if ((departure[ain] - arrival[ain]) > (departure[din] - arrival[din]) && (arrival[ain] < arrival[din]))
       start_index = ain
    end
    times << [arrival[start_index], departure[start_index]].min
    while (true)
        arrival.delete_at(start_index)
        departure.delete_at(start_index)
        break if departure.empty?
        din = departure.index(departure.min)
        ain = arrival.index(arrival.min)
        
        if ((departure[ain] - arrival[ain]) > (departure[din] - arrival[din]) && (arrival[ain] < arrival[din]))
           start_index = ain
        else
             start_index = din
        end
        
        if departure[start_index] == times[-1]
            break
        else
            times << departure[start_index]
        end
    end
    (times.length <= 4) ? times.uniq.length : times.length
end

p countMeetings([1,2,3,3,3], [2,2,3,4,4])#4
p countMeetings([1,1,2], [1,2,2])#2
p countMeetings([1,2,1,2,2], [3,2,1,3,3])#3
p countMeetings([1,10,11], [11,10,11])#3
p countMeetings([1,1,2], [12,3,3])#3
p countMeetings([43862, 32403, 10323, 66772, 64109, 17862, 93881, 22542, 79323, 6520, 68034, 54504, 73894, 89711, 63331, 75543, 76061, 60853, 21518, 89656, 11158, 37357, 33719, 80260, 33075, 77373, 7819, 38019, 9134, 57787, 50556, 4144, 68166, 81061, 16301, 84877, 21783, 82161, 28777, 91120, 22290, 86032, 38829, 77654, 32370, 99738, 14097, 41810, 23631, 6626, 66229, 57972, 99612, 77834, 61371, 51154, 31601, 1251, 91702, 21452, 24228, 67187, 60073, 86005, 60683, 94802, 18556, 89195, 89386, 29684, 9857, 92858, 70879, 5604, 98983, 92225, 85761, 10097, 81824, 18772, 4054, 64042, 53122, 85618, 67223, 52931, 50512, 78387, 96410, 63808, 77266, 27367, 60559, 18489, 8618, 92344, 70000, 72136, 95103, 25475, 42937, 75414, 65281, 91685, 3220, 901, 63670, 87258, 41084, 54733, 37860, 74167, 49521, 36835, 59218, 88356, 53799, 77886, 53533, 20632, 70720, 33932, 27220, 9892, 75658, 89945, 9718, 45121, 65067, 31326, 22597, 48140, 68278, 94887, 6858, 17957, 29815, 18758, 17667, 32875, 73650, 33214, 70486, 3801, 96427, 51853, 77450, 15939, 66074, 23318, 69725, 39768, 3724, 13072, 36520, 15055, 74054, 90676, 10190, 4642, 74918, 10527, 69445, 68807, 49245, 49060, 94929, 5634, 63437, 22954, 31460, 83257, 26323, 75510, 75222, 96281, 83805, 6704, 44141, 43386, 74316, 46684, 80253, 68716, 64884, 72029, 7197, 43365, 92918, 52709, 41742, 43187, 13811, 57050, 35091, 47901, 7707, 5373, 59424, 22536, 59235, 80657, 14310, 64620, 98604, 75905, 67602, 80098, 22957, 56292, 65964, 94652, 24225, 10120, 47707, 12409, 13506, 93001, 43394, 75564, 41098, 77182, 14751, 28025, 78645, 12701, 95545, 921, 92144, 92813, 77456, 53212, 787, 88781, 48852, 53862, 40499, 83372, 79291, 86798, 5824, 55242, 18330, 71174, 24232, 27641, 79141, 59796, 86992, 83502, 10616, 60217, 39778, 26954, 8938, 83934, 82433, 51505, 84827, 13689, 47036, 46123, 47151, 90345, 45076, 39719, 8850, 53932, 33284, 18455, 40430, 1988, 20532, 36265, 90143, 13038, 70055, 41321, 77541, 82385, 61812, 41959, 24653, 78472, 34661, 4354, 30039, 93234, 96518, 97560, 10361, 41277, 1562, 45252, 92925, 5475, 79445, 44347, 94103, 3554, 54901, 55127, 30243, 2751, 33281, 89591, 11061, 45938, 66795, 36614, 24246, 78886, 84003, 16605, 93214, 15703, 83375, 59517, 14453, 68334, 29012, 38174, 10295, 10679, 34449, 17983, 28873, 97136, 30392, 67400, 4773, 75598, 56380, 98517, 83547, 65118, 49981, 87882, 41423, 40982, 12217, 86046, 79299, 24143, 22672, 52864, 54953, 59682, 34418, 37652, 51827, 94555, 80065, 99086, 7016, 33166, 12959, 40988, 42197, 19758, 94064, 56681, 18306, 87253, 13831, 54531, 56821, 24550, 71304, 45939, 18648, 76449, 2423, 19950, 20177, 92155, 30006, 56677, 31751, 27344, 82132, 90052, 34864, 43730, 65570, 26675, 88722, 24877, 69719, 94713, 56875, 58931, 69162, 47960, 53668, 46455, 43351, 83821, 18928, 81779, 59411, 68846, 31866, 77089, 91225, 37240, 30109, 9747, 42049, 44844, 65387, 87863, 26891, 41958, 23330, 47106, 90017, 13922, 99467, 39452, 32281, 48702, 2846, 98632, 7946, 90482, 10801, 8734, 87892, 46092, 75676, 17042, 38231, 89275, 49797, 53917, 64370, 56712, 87242, 82293, 51920, 4912, 84842, 9768, 55471, 90656, 92622, 97594, 10102, 80807, 69186, 89348, 14158, 41412, 57932, 52878, 47937, 22777, 84821, 94324, 62792, 47682, 30920, 33815, 47364, 49477, 62073, 51306, 29744, 41825, 35866, 56238, 54100, 47141, 65659, 18006, 91353, 17546, 39357, 22614, 99976, 22601, 792, 9767, 15630, 9347, 65708, 85701, 37337, 59400, 43220, 29031, 16067, 35833, 55047, 58165, 35378, 21494, 69120, 79186, 9595, 80604, 91310, 57001, 68638, 36418, 93817, 86174, 41431, 34617, 67549, 86906, 88204, 31665, 49705, 88453, 96727, 75973, 97718, 1286, 6187, 29961, 57839, 25550, 23098, 23222, 89028, 34110, 85223, 12614, 84667, 95074, 1, 34800, 6333, 92228, 47145, 58788, 59093, 98313, 28290, 68741, 24258, 40074, 2600, 50571, 51038, 18510, 81497, 86873, 7862, 22574, 82479, 69744, 50552, 95310, 85683, 91485, 57049, 66117, 93304, 42924, 1000, 22835, 40774, 37572, 46894, 99567, 39912, 69156, 49390, 40162, 25461, 44223, 39501, 93889, 32363, 76535, 81299, 93845, 68428, 22121, 38778, 43368, 8728, 64887, 63656, 43819, 25333, 2945, 38707, 55725, 31608, 9264, 52773, 57530, 37648, 75442, 98121, 3665, 46519, 91982, 65302, 71571, 45671, 9896, 82144, 27922, 98287, 53595, 74334, 89391, 11739, 48726, 95118, 20531, 3381, 33782, 87658, 19805, 52402, 77684, 29932, 67492, 66434, 97740, 12978, 91130, 87549, 96914, 57027, 90047, 95241, 31921, 66917, 3053, 50901, 10995, 1394, 9510, 68679, 48270, 97833, 35222, 8474, 5279, 8006, 99357, 89119, 22960, 9078, 22527, 95018, 35046, 17361, 32898, 56046, 31239, 44963, 9260, 28631, 43713, 1674, 22460, 81891, 8814, 1649, 90183, 40058, 36290, 60632, 92825, 62463, 60416, 47195, 740, 81565, 49026, 18926, 51234, 2557, 16020, 57245, 67331, 98218, 84784, 27725, 29519, 90165, 71130, 43485, 162, 68887, 35588, 71367, 41771, 1821, 46999, 25578, 58550, 97194, 81060, 40096, 35332, 24151, 16430, 6875, 35979, 75606, 43957, 20941, 59070, 87770, 18667, 57107, 59593, 12400, 23089, 22232, 92195, 79178, 59518, 97710, 10303, 64487, 13614, 46746, 8158, 80343, 38536, 84968, 41039, 89990, 98846, 5308, 22601, 15271, 43087, 38306, 55756, 26371, 74414, 81950, 51873, 60831, 95448, 71521, 31545, 91014, 99378, 58268, 83682, 13570, 56401, 99427, 99604, 20973, 59652, 42911, 8612, 79970, 99716, 63218, 71795, 39230, 89184, 2301, 21922, 6817, 69074, 22142, 65145, 24506, 14714, 72558, 70604, 92027, 85480, 18809, 61280, 57855, 35513, 38555, 36789, 60657, 96345, 17895, 17861, 56639, 14082, 60223, 55251, 16141, 27108, 99507, 77058, 80114, 32031, 40118, 57110, 24399, 88078, 19108, 10723, 54415, 61151, 90273, 72178, 79454, 17284, 35589, 63480, 46938, 4384, 50278, 30063, 2701, 16702, 82658, 66461, 61412, 765, 80118, 13078, 6024, 31016, 98494, 80268, 32099, 8933, 6009, 13636, 75044, 69579, 96895, 86904, 35565, 35761, 62687, 54896, 62337, 33176, 97437, 3061, 15459, 93732, 86581, 12464, 1104, 32985, 27034, 42694, 40097, 92320, 87483, 16095, 75655, 43045, 26406, 78386, 44007, 85023, 32870, 78053, 48344, 31008, 59865, 32657, 5849, 94431, 17514, 45482, 4914, 76187, 6955, 12591, 34977, 31517, 54911, 65346, 16919, 16832, 2328, 62812, 14306, 456, 14317, 9918, 13198, 38804, 58013, 76764, 39224, 84329, 52200, 20686, 73757, 29723, 6311, 4252, 61108, 45903, 90099, 92640, 84583, 58619, 49350, 30637, 75468, 92269, 65658, 9389, 66010, 21554, 45760, 50687, 56860, 22180, 41254, 27099, 20966, 86380, 45177, 5051, 96455, 71370, 68916, 89471, 59690, 36395, 35614, 40864, 61617, 56385, 37404, 44223, 81601, 75126, 35133, 20792, 76440, 54939, 83660, 65200, 97747, 35903, 12988, 45691, 17721, 40370, 32428, 27501, 52823, 75357, 30191, 62018, 48228, 42201, 62620, 35687, 15140, 91938, 73871, 86269, 67496, 53793, 8554, 23113, 61321, 8619, 7917, 41257, 29520, 14288, 68671, 35858, 28921, 14748, 51399, 90300, 39028, 22078, 54531, 47116, 37978, 56437, 53293, 94910, 5186, 55606, 3061, 91542, 87420, 78136, 53711, 87171, 88997, 10999, 22769, 29500],[86961, 44599, 35399, 74796, 71521, 89490, 96613, 59270, 94888, 18893, 77507, 89983, 97435, 89922, 76558, 90993, 90520, 84539, 95334, 90374, 58874, 57606, 51278, 94879, 66236, 80932, 75082, 98546, 23967, 81847, 76300, 63767, 92138, 86331, 58695, 90575, 97689, 89301, 50000, 93027, 34298, 90026, 48021, 80718, 84454, 99991, 46342, 69289, 76169, 77459, 71444, 68395, 99639, 89380, 87323, 62211, 32123, 47348, 99084, 45540, 64473, 87783, 67414, 99617, 73778, 98622, 42377, 91728, 99402, 61359, 79963, 99782, 92234, 27200, 99410, 99911, 85909, 37814, 83128, 92868, 99416, 82454, 70341, 94511, 70990, 79253, 56967, 81504, 99107, 83651, 96366, 37074, 70366, 61405, 45893, 95513, 81057, 91294, 99721, 89328, 83447, 94527, 94216, 93259, 36431, 58471, 65801, 93253, 77167, 71173, 74298, 91149, 84636, 57331, 63382, 94974, 66156, 93458, 64808, 87010, 93334, 70064, 37069, 13811, 88459, 93765, 79680, 82314, 94779, 35417, 48492, 88981, 78978, 95155, 89773, 75888, 47734, 52461, 65476, 39732, 99207, 60882, 98643, 21152, 96913, 67660, 94101, 65613, 69107, 58516, 89790, 76992, 30898, 60000, 80230, 69850, 95903, 94359, 47199, 59947, 76862, 16174, 84865, 69376, 98087, 59623, 97019, 11267, 86384, 41590, 96877, 99488, 50205, 80741, 86477, 99885, 96242, 55995, 94323, 63317, 76652, 63240, 84351, 98375, 66818, 87849, 53151, 69364, 99914, 85261, 52836, 93986, 27787, 82414, 83398, 51467, 49331, 18128, 83896, 40966, 63439, 81359, 61346, 72834, 98825, 92193, 73434, 96564, 90026, 75237, 76990, 99024, 56909, 80060, 50994, 99985, 16183, 99655, 61851, 95917, 74635, 84551, 43517, 42939, 87841, 80919, 96304, 66519, 92593, 96874, 78151, 75705, 93634, 92421, 74823, 70464, 80967, 99201, 87446, 87659, 28501, 91662, 56172, 71909, 68799, 43945, 99524, 80810, 90569, 99314, 12859, 91959, 80429, 74007, 92637, 92712, 99443, 58965, 97251, 54116, 57282, 77193, 61858, 93816, 46488, 61369, 31456, 87863, 96276, 95204, 57324, 92366, 85614, 73718, 98543, 26522, 78855, 82015, 80872, 82429, 86060, 74848, 69305, 82222, 71935, 33038, 48591, 99431, 98461, 99615, 41879, 81563, 3259, 89909, 97128, 88419, 97168, 99285, 97278, 27574, 64181, 95394, 70985, 23625, 76501, 94630, 65205, 72910, 70154, 96348, 67765, 84551, 96596, 58590, 97262, 88300, 89714, 69335, 73314, 96254, 61434, 90547, 67057, 16914, 61126, 50438, 76988, 99028, 91208, 68159, 13194, 87089, 70875, 99852, 99848, 72609, 58965, 91949, 74294, 93291, 35191, 98160, 83284, 69526, 41774, 91587, 64296, 63067, 65653, 81181, 57795, 99483, 92724, 99897, 84778, 51886, 53890, 55294, 91979, 31395, 96554, 68611, 67583, 95108, 16776, 79213, 96838, 53209, 93703, 79587, 99909, 84774, 68423, 62494, 72353, 92938, 56943, 76468, 43880, 40898, 97404, 98868, 55166, 95319, 66232, 47388, 95576, 42127, 96905, 96379, 62090, 97103, 97727, 62074, 80676, 89359, 64705, 89213, 29984, 90039, 75971, 81919, 64013, 80026, 99295, 88074, 60317, 45560, 63439, 88050, 96895, 87886, 93227, 50018, 87192, 52263, 98366, 47781, 99733, 73085, 44494, 89566, 6619, 99402, 11654, 97470, 71019, 40509, 92474, 96898, 83139, 65336, 79213, 93917, 76920, 96876, 97702, 94125, 88699, 97757, 80687, 10984, 91240, 42593, 59225, 99232, 94379, 99616, 36071, 82599, 87657, 96009, 33267, 70689, 89192, 62407, 86387, 91004, 88658, 95714, 76713, 83287, 40247, 36299, 80686, 97074, 72219, 85659, 73006, 49035, 47113, 58302, 67160, 54358, 72237, 29693, 92918, 46405, 65485, 34064, 99987, 35622, 10916, 88097, 62664, 62767, 70759, 94782, 98600, 91666, 90159, 36105, 20614, 90628, 95552, 67674, 87807, 67726, 71997, 87799, 16040, 99845, 94028, 79648, 69375, 37735, 97157, 94477, 58862, 65920, 91736, 97147, 94417, 80141, 75012, 99060, 98555, 89505, 97734, 78250, 69193, 85287, 95898, 81416, 46928, 67161, 94589, 85842, 98152, 20676, 85505, 96183, 13182, 81060, 15417, 98212, 79354, 92976, 69018, 99317, 49360, 74835, 61870, 61369, 62613, 61149, 100000, 22963, 82904, 97943, 74349, 25790, 86257, 85812, 94362, 97132, 91325, 98013, 83164, 99433, 93475, 78041, 61766, 27142, 44163, 45250, 47352, 99638, 83421, 73647, 81725, 83093, 58029, 49167, 71577, 96037, 77644, 96386, 85305, 98042, 75595, 54515, 73904, 60050, 61766, 77664, 83788, 80898, 80533, 69597, 80311, 61177, 85786, 57777, 97809, 76956, 39442, 81388, 99312, 60810, 48791, 92225, 84167, 99184, 75428, 94337, 82821, 82267, 99990, 89920, 85920, 91443, 57735, 58242, 97890, 27850, 65847, 51550, 88774, 20584, 82455, 91439, 67861, 67594, 73114, 98957, 52719, 97526, 90208, 98406, 80694, 97151, 98602, 94341, 70983, 84225, 77088, 24360, 50218, 75009, 85805, 67800, 99155, 43318, 13448, 55989, 21404, 99384, 93625, 74469, 90810, 88440, 96728, 95854, 65662, 37942, 59308, 48673, 93993, 62944, 67984, 99726, 70669, 44432, 82586, 23244, 65493, 93913, 88481, 43257, 83742, 94749, 73518, 81129, 52216, 33637, 86275, 69110, 67245, 70823, 98761, 55329, 80734, 89242, 99144, 86902, 35967, 85441, 99276, 83130, 58851, 82904, 83702, 58425, 93712, 96848, 30676, 79511, 55852, 86541, 97576, 84105, 94824, 75732, 78868, 75564, 73052, 41725, 97931, 98665, 22773, 71004, 97611, 49683, 59045, 91264, 27461, 35617, 90929, 98358, 93699, 80526, 98067, 91281, 86023, 95969, 52734, 55525, 88307, 40009, 94757, 53677, 97987, 99417, 5739, 50728, 31955, 58653, 55818, 97665, 87869, 80397, 94205, 58570, 83798, 98428, 74383, 42146, 99873, 99756, 79680, 86216, 59434, 81722, 99815, 99678, 72931, 97406, 90125, 54866, 90833, 99994, 75756, 85392, 62927, 91642, 88824, 85703, 63695, 81261, 28551, 88449, 41988, 58475, 89809, 99046, 96849, 98223, 51991, 64780, 81416, 46107, 39133, 40060, 71626, 96822, 82847, 36073, 96352, 54622, 96584, 62915, 22307, 86362, 99697, 95968, 93899, 99955, 76181, 59109, 42413, 94294, 36005, 69825, 69045, 68666, 94146, 92301, 92517, 34485, 54411, 71982, 62812, 64479, 70939, 61971, 51027, 98434, 85880, 99191, 63148, 68022, 86210, 30182, 23332, 82602, 99142, 98067, 57573, 68421, 11766, 35199, 78328, 96019, 99138, 93043, 67931, 63466, 89201, 68379, 94429, 34796, 97955, 64176, 89534, 99090, 96988, 13469, 33024, 65867, 85085, 59611, 77174, 96245, 96632, 50173, 84299, 75792, 41878, 84862, 52111, 97053, 32949, 86636, 74050, 49882, 83157, 92306, 78479, 98143, 48320, 84583, 44830, 97308, 80398, 47863, 95071, 64207, 90423, 75379, 66645, 74965, 55566, 91885, 52784, 65284, 89993, 74038, 80807, 99321, 63260, 84447, 79578, 95748, 93648, 77066, 98132, 52761, 38593, 82353, 71057, 79214, 99530, 93138, 95839, 70701, 91023, 62124, 78600, 96526, 69338, 17019, 89208, 33296, 70419, 76680, 91193, 43048, 84971, 87318, 94637, 92706, 87824, 82667, 97375, 76772, 87644, 89956, 81979, 72349, 39823, 65638, 65242, 77120, 95982, 92590, 82639, 78523, 37956, 31026, 80235, 65657, 89382, 70310, 98905, 57372, 14441, 46431, 34114, 94779, 87075, 32166, 97898, 86060, 49070, 98733, 92551, 92193, 97787, 41641, 94577, 99685, 77892, 90079, 70093, 73973, 73891, 42770, 91009, 60662, 18005, 90550, 81894, 71927, 99271, 40476, 61400, 46670, 99262, 98836, 72352, 95386, 55371, 48931, 76575, 99054, 57921, 96162, 94500, 71810, 20213, 97172, 89154, 97847, 56415, 96523, 95250, 42393, 91225, 69261])



