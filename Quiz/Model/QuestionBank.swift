//
//  QuestionBank.swift
//  Quiz
//
//  Created by Сауле Досымбекова on 6/9/19.
//  Copyright © 2019 Сауле Досымбекова. All rights reserved.
//

import Foundation
class QuestionBank {
    var list = [Question] ()
    
    var listlevel1 = [Question] ()
    
    var listlevel2 = [Question] ()
    
    var listlevel3 = [Question] ()
    init () {
        /*
        list.append(Question (image: "flag1", questionText: "1.Величины смежных углов пропорциональны числам 5 и 7. Найдите разность между этими углами.", choiceA: "30'", choiceB: "70'", choiceC: "105'", choiceD: "5'", answer: 1))
        list.append(Question (image: "flag2", questionText: "2.Катеты прямоугольного треугольника равны 6 и 8. Чему равна гипотенуза треугольника?", choiceA: "100", choiceB: "16", choiceC: "10", choiceD: "46", answer: 3))
        list.append(Question (image: "flag3", questionText: "3.По теореме Пифагора квадрат гипотенузы равен сумме квадратов катетов. Подставив числовые данные, получаем ответ.", choiceA: "Ромб", choiceB: "Квадрат", choiceC: "Окружность", choiceD: "Круг", answer: 3))
        list.append(Question (image: "flag4", questionText: "4.Если угол при вершине равнобедренного треугольника равен 40°, то углы при основании равны:", choiceA: "60'60'", choiceB: "70'70'", choiceC: "70'50'", choiceD: "60'80'", answer: 2))
        list.append(Question (image: "flag5", questionText: "5.При пересечении двух параллельных прямых секущей сумма односторонних углов равна:", choiceA: "90", choiceB: "180", choiceC: "45", choiceD: "60", answer: 2))
        list.append(Question (image: "flag6", questionText: "6.Центральный угол опирается на дугу 100°. Чему равен вписанный угол, опирающийся на ту же дугу?", choiceA: "100’", choiceB: "50’", choiceC: "25’", choiceD: "150’", answer: 2))
        list.append(Question (image: "flag7", questionText: "7.Разность векторов а (3:2) и вектора в (-1;6) равна:", choiceA: "(4;-4)", choiceB: "(-4;4)", choiceC: "(2;8)", choiceD: "(4;4)", answer: 1))
        list.append(Question (image: "flag8", questionText: "8.Периметр равнобедренного треугольника равен 98. Боковая сторона 25 . Найдите его площадь. ", choiceA: "336", choiceB: "24", choiceC: "150", choiceD: "168", answer: 4))
        list.append(Question (image: "flag9", questionText: "9.Сколько будет составлять площадь ромба, диагонали которого равны 6 и 12?", choiceA: "36", choiceB: "72", choiceC: "18", choiceD: "64", answer: 1))
        list.append(Question (image: "flag10", questionText: "10.Найдите абсциссу точки, симметричной относительно начала координат точке:", choiceA: "2", choiceB: "-2", choiceC: "5", choiceD: "-5", answer: 4))
        
        */
        listlevel1.append(Question (image: "flag1", questionText: "1.Величины смежных углов пропорциональны числам 5 и 7. Найдите разность между этими углами.", choiceA: "30'", choiceB: "70'", choiceC: "105'", choiceD: "5'", answer: 1))
        listlevel1.append(Question (image: "flag2", questionText: "2.Катеты прямоугольного треугольника равны 6 и 8. Чему равна гипотенуза треугольника?", choiceA: "100", choiceB: "16", choiceC: "10", choiceD: "46", answer: 3))
        listlevel1.append(Question (image: "flag3", questionText: "3.По теореме Пифагора квадрат гипотенузы равен сумме квадратов катетов. Подставив числовые данные, получаем ответ.", choiceA: "Ромб", choiceB: "Квадрат", choiceC: "Окружность", choiceD: "Круг", answer: 3))
        listlevel2.append(Question (image: "flag4", questionText: "4.Если угол при вершине равнобедренного треугольника равен 40°, то углы при основании равны:", choiceA: "60'60'", choiceB: "70'70'", choiceC: "70'50'", choiceD: "60'80'", answer: 2))
        listlevel2.append(Question (image: "flag5", questionText: "5.При пересечении двух параллельных прямых секущей сумма односторонних углов равна:", choiceA: "90", choiceB: "180", choiceC: "45", choiceD: "60", answer: 2))
        listlevel2.append(Question (image: "flag6", questionText: "6.Центральный угол опирается на дугу 100°. Чему равен вписанный угол, опирающийся на ту же дугу?", choiceA: "100’", choiceB: "50’", choiceC: "25’", choiceD: "150’", answer: 2))
        listlevel3.append(Question (image: "flag7", questionText: "7.Разность векторов а (3:2) и вектора в (-1;6) равна:", choiceA: "(4;-4)", choiceB: "(-4;4)", choiceC: "(2;8)", choiceD: "(4;4)", answer: 1))
        listlevel3.append(Question (image: "flag8", questionText: "8.Периметр равнобедренного треугольника равен 98. Боковая сторона 25 . Найдите его площадь. ", choiceA: "336", choiceB: "24", choiceC: "150", choiceD: "168", answer: 4))
        listlevel3.append(Question (image: "flag9", questionText: "9.Сколько будет составлять площадь ромба, диагонали которого равны 6 и 12?", choiceA: "36", choiceB: "72", choiceC: "18", choiceD: "64", answer: 1))
        
        
    }
}
