.class public Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final notches:[Ljava/lang/StringBuffer;

.field public static final reflector0:Ljava/lang/StringBuffer;

.field public static final reflectorB:Ljava/lang/StringBuffer;

.field public static final reflectorC:Ljava/lang/StringBuffer;

.field public static final rotorI:Ljava/lang/StringBuffer;

.field public static final rotorII:Ljava/lang/StringBuffer;

.field public static final rotorIII:Ljava/lang/StringBuffer;

.field public static final rotorIV:Ljava/lang/StringBuffer;

.field public static final rotorV:Ljava/lang/StringBuffer;

.field public static final rotorVI:Ljava/lang/StringBuffer;

.field public static final rotorVII:Ljava/lang/StringBuffer;

.field public static final rotorVIII:Ljava/lang/StringBuffer;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/StringBuffer;

.field public firstRotor:Ljava/lang/StringBuffer;

.field public firstRotorT:Ljava/lang/StringBuffer;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/StringBuffer;

.field public plugBoard:[C

.field public reflector:Ljava/lang/StringBuffer;

.field public secondRotor:Ljava/lang/StringBuffer;

.field public secondRotorT:Ljava/lang/StringBuffer;

.field public thirdRotor:Ljava/lang/StringBuffer;

.field public thirdRotorT:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "EKMFLGDQVZNTOWYHXUSPAIBRCJ"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorI:Ljava/lang/StringBuffer;

    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "AJDKSIRUXBLHWTMCQGZNPYFVOE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorII:Ljava/lang/StringBuffer;

    .line 16
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BDFHJLCPRTXVZNYEIWGAKMUSQO"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorIII:Ljava/lang/StringBuffer;

    .line 17
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ESOVPZJAYQUIRHXLNFTGKDCMWB"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorIV:Ljava/lang/StringBuffer;

    .line 18
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "VZBRGITYUPSDNHLXAWMJQOFECK"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorV:Ljava/lang/StringBuffer;

    .line 19
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "JPGVOUMFYQBENHZRDKASXLICTW"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorVI:Ljava/lang/StringBuffer;

    .line 20
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "NZJHGRCXMYSWBOUFAIVLPEKQDT"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorVII:Ljava/lang/StringBuffer;

    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorVIII:Ljava/lang/StringBuffer;

    .line 24
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "YRUHQSLDPXNGOKMIEBFZCWVJAT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflectorB:Ljava/lang/StringBuffer;

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "FVPJIAOYEDRZXWGCTKUQSBNMHL"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflectorC:Ljava/lang/StringBuffer;

    .line 26
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector0:Ljava/lang/StringBuffer;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/StringBuffer;

    .line 41
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Q"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "E"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "V"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "J"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Z"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector0:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    const/16 v0, 0x1a

    new-array v0, v0, [C

    .line 38
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard:[C

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotor:Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object p1

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotor:Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object p1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object p1

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotor:Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {p0, p4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object p1

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector:Ljava/lang/StringBuffer;

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public static encrypt(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 444
    new-instance v0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    if-eq p5, p1, :cond_0

    .line 447
    invoke-virtual {v0, p5}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->setPlugBoard(Ljava/lang/String;)Z

    .line 1381
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    .line 1387
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 1389
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 p4, 0x5a

    if-gt p3, p4, :cond_1

    const/16 p4, 0x41

    if-lt p3, p4, :cond_1

    .line 1394
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotate()V

    .line 1397
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard(C)C

    move-result p3

    .line 1400
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorOne(C)C

    move-result p3

    .line 1403
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorTwo(C)C

    move-result p3

    .line 1406
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorThree(C)C

    move-result p3

    .line 1409
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector(C)C

    move-result p3

    .line 1412
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->IrotorThree(C)C

    move-result p3

    .line 1415
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->IrotorTwo(C)C

    move-result p3

    .line 1418
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->IrotorOne(C)C

    move-result p3

    .line 1421
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard(C)C

    move-result p3

    .line 1424
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/16 p4, 0x20

    if-ne p3, p4, :cond_2

    .line 1430
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object p1
.end method

.method public static pbParser(Ljava/lang/String;)Z
    .locals 5

    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 465
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_4

    .line 467
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-ge v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 470
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/2addr v2, v1

    goto :goto_0

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public IrotorOne(C)C
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotor:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    return p1
.end method

.method public IrotorThree(C)C
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotor:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    return p1
.end method

.method public IrotorTwo(C)C
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotor:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getFRSetting()C
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getSRSetting()C
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getTRSetting()C
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/StringBuffer;

    const-string v2, "RotorI"

    .line 171
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_15

    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_a

    :cond_0
    const-string v2, "RotorII"

    .line 176
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_9

    :cond_1
    const-string v2, "RotorIII"

    .line 181
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_8

    :cond_2
    const-string v2, "RotorIV"

    .line 186
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_7

    :cond_3
    const-string v2, "RotorV"

    .line 191
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "5"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_6

    :cond_4
    const-string v2, "RotorVI"

    .line 196
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "6"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_5

    :cond_5
    const-string v2, "RotorVII"

    .line 201
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "7"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string v2, "RotorVIII"

    .line 206
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    const-string v2, "ReflectorB"

    .line 211
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, ""

    if-nez v2, :cond_d

    const-string v2, "B"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const-string v2, "ReflectorC"

    .line 216
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "C"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    const-string v2, "No Reflector"

    .line 221
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    new-array p1, v0, [Ljava/lang/StringBuffer;

    .line 226
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ERROR"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v0, p1, v4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object v0, p1, v3

    return-object p1

    .line 222
    :cond_b
    :goto_0
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector0:Ljava/lang/StringBuffer;

    aput-object p1, v1, v4

    .line 223
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object p1, v1, v3

    return-object v1

    .line 217
    :cond_c
    :goto_1
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflectorC:Ljava/lang/StringBuffer;

    aput-object p1, v1, v4

    .line 218
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object p1, v1, v3

    return-object v1

    .line 212
    :cond_d
    :goto_2
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflectorB:Ljava/lang/StringBuffer;

    aput-object p1, v1, v4

    .line 213
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aput-object p1, v1, v3

    return-object v1

    .line 207
    :cond_e
    :goto_3
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorVIII:Ljava/lang/StringBuffer;

    aput-object p1, v1, v4

    .line 208
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v0, 0x7

    aget-object p1, p1, v0

    aput-object p1, v1, v3

    return-object v1

    .line 202
    :cond_f
    :goto_4
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorVII:Ljava/lang/StringBuffer;

    aput-object p1, v1, v4

    .line 203
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v0, 0x6

    aget-object p1, p1, v0

    aput-object p1, v1, v3

    return-object v1

    .line 197
    :cond_10
    :goto_5
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorVI:Ljava/lang/StringBuffer;

    aput-object p1, v1, v4

    .line 198
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v0, 0x5

    aget-object p1, p1, v0

    aput-object p1, v1, v3

    return-object v1

    .line 192
    :cond_11
    :goto_6
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorV:Ljava/lang/StringBuffer;

    aput-object p1, v1, v4

    .line 193
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v0, 0x4

    aget-object p1, p1, v0

    aput-object p1, v1, v3

    return-object v1

    .line 187
    :cond_12
    :goto_7
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorIV:Ljava/lang/StringBuffer;

    aput-object p1, v1, v4

    .line 188
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    aput-object p1, v1, v3

    return-object v1

    .line 182
    :cond_13
    :goto_8
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorIII:Ljava/lang/StringBuffer;

    aput-object p1, v1, v4

    .line 183
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    aget-object p1, p1, v0

    aput-object p1, v1, v3

    return-object v1

    .line 177
    :cond_14
    :goto_9
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorII:Ljava/lang/StringBuffer;

    aput-object p1, v1, v4

    .line 178
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    aget-object p1, p1, v3

    aput-object p1, v1, v3

    return-object v1

    .line 172
    :cond_15
    :goto_a
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->rotorI:Ljava/lang/StringBuffer;

    aput-object p1, v1, v4

    .line 173
    sget-object p1, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->notches:[Ljava/lang/StringBuffer;

    aget-object p1, p1, v4

    aput-object p1, v1, v3

    return-object v1
.end method

.method public initialSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 110
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 111
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1, p1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 115
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 116
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1, p1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-void
.end method

.method public plugBoard(C)C
    .locals 1

    add-int/lit8 p1, p1, -0x41

    .line 346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public reflector(C)C
    .locals 1

    add-int/lit8 p1, p1, -0x41

    .line 271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->reflector:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    return p1
.end method

.method public rotate()V
    .locals 5

    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 316
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 332
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public rotorOne(C)C
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotor:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    return p1
.end method

.method public rotorThree(C)C
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotor:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    return p1
.end method

.method public rotorTwo(C)C
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotorT:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 249
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotor:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    return p1
.end method

.method public setFirstRotor(Ljava/lang/String;)V
    .locals 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->firstRotor:Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/StringBuffer;

    return-void
.end method

.method public setPlugBoard(CC)V
    .locals 3

    const/4 v0, 0x0

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->plugBoard:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 128
    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 129
    aput-char p2, v1, v0

    goto :goto_1

    :cond_0
    if-ne v2, p2, :cond_1

    .line 131
    aput-char p1, v1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setPlugBoard(Ljava/lang/String;)Z
    .locals 8

    .line 144
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 146
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v3, :cond_1

    return v5

    .line 149
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x41

    if-lt v3, v7, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v6, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ge v2, v7, :cond_0

    :cond_2
    return v5

    .line 153
    :cond_3
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 155
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 157
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->setPlugBoard(CC)V

    goto :goto_0

    :cond_4
    return v5

    :cond_5
    return v4
.end method

.method public setSecondRotor(Ljava/lang/String;)V
    .locals 2

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->secondRotor:Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/StringBuffer;

    return-void
.end method

.method public setThirdRotor(Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->getValue(Ljava/lang/String;)[Ljava/lang/StringBuffer;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/crypt/KodularEnigma;->thirdRotor:Ljava/lang/StringBuffer;

    return-void
.end method
