//
//  MajorScalesLogic.swift
//  Assignment7
//
//  Created by Justin Bell on 11/25/24.
//

import Foundation

struct MajorScalesLogic {
    
    let scales = [
        MajorScales(scaleNames: "C Major", scaleNotes: "C D E F G A B C"),
        MajorScales(scaleNames: "F Major", scaleNotes: "F G A Bb C D E F"),
        MajorScales(scaleNames: "G Major", scaleNotes: "G A B C D E F# G"),
        MajorScales(scaleNames: "Bb Major", scaleNotes: "Bb C D Eb F G A Bb"),
        MajorScales(scaleNames: "D Major", scaleNotes: "D E F# G A B C# D"),
        MajorScales(scaleNames: "Eb Major", scaleNotes: "Eb F G Ab Bb C D Eb"),
        MajorScales(scaleNames: "A Major", scaleNotes: "A B C# D E F# G# A"),
        MajorScales(scaleNames: "Ab Major", scaleNotes: "Ab Bb C Db Eb F G Ab"),
        MajorScales(scaleNames: "E Major", scaleNotes: "E F# G# A B C# D# E"),
        MajorScales(scaleNames: "Db Major", scaleNotes: "Db Eb F Gb Ab Bb C Db"),
        MajorScales(scaleNames: "B Major", scaleNotes: "B C# D# E F# G# A# B"),
        MajorScales(scaleNames: "Gb Major", scaleNotes: "Gb Ab Bb Cb Db Eb F Gb"),
        MajorScales(scaleNames: "C Minor", scaleNotes: "C D Eb F G Ab Bb C"),
        MajorScales(scaleNames: "F Minor", scaleNotes: "F G Ab Bb C Db Eb F"),
        MajorScales(scaleNames: "G Minor", scaleNotes: "G A Bb C D Eb F G"),
        MajorScales(scaleNames: "Bb Minor", scaleNotes: "Bb C Db Eb F Gb Ab Bb"),
        MajorScales(scaleNames: "D Minor", scaleNotes: "D E F G A Bb C D"),
        MajorScales(scaleNames: "Eb Minor", scaleNotes: "Eb F Gb Ab Bb Cb Db Eb"),
        MajorScales(scaleNames: "A Minor", scaleNotes: "A B C D E F G A"),
        MajorScales(scaleNames: "G# Minor", scaleNotes: "G# A# B C# D# E F# G#"),
        MajorScales(scaleNames: "E Minor", scaleNotes: "E F# G A B C D E"),
        MajorScales(scaleNames: "C# Minor", scaleNotes: "C# D# E F# G# A B C#"),
        MajorScales(scaleNames: "B Minor", scaleNotes: "B C# D E F# G A B"),
        MajorScales(scaleNames: "F# Minor", scaleNotes: "F# G# A B C# D E F#"),
    ]
    
    func getCount() -> Int {
        return scales.count
    }
    
    func getScaleName(_ index: Int) -> String {
        return scales[index].scaleName
    }
    
    func getScaleNotes(_ index: Int) -> String {
        return scales[index].scaleNotes
    }
}

