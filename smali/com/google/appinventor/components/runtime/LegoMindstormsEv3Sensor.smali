.class public Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field protected static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "1"


# instance fields
.field protected sensorPortNumber:I


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    const-string p1, "1"

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->SensorPort(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public SensorPort()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor port that the sensor is connected to."
        userVisible = false
    .end annotation

    .line 37
    iget v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortNumber:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->portNumberToSensorPortLetter(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "lego_ev3_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const-string v0, "SensorPort"

    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->setSensorPort(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final readInputPercentage(Ljava/lang/String;IIII)I
    .locals 10

    if-ltz p2, :cond_1

    const/4 v0, 0x3

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    if-gt p3, v0, :cond_1

    const/4 v1, -0x1

    if-lt p5, v1, :cond_1

    const/4 v2, 0x7

    if-gt p5, v2, :cond_1

    const/16 v3, -0x67

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-array v8, v2, [Ljava/lang/Object;

    const/16 v2, 0x1b

    .line 73
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v8, v9

    int-to-byte p2, p2

    .line 74
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v8, v2

    int-to-byte p2, p3

    .line 75
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v8, p3

    int-to-byte p2, p4

    .line 76
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v8, v0

    const/4 p2, 0x4

    int-to-byte p4, p5

    .line 77
    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    aput-object p4, v8, p2

    const/4 p2, 0x5

    .line 78
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    aput-object p4, v8, p2

    const/4 p2, 0x6

    .line 79
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    aput-object p4, v8, p2

    const-string v7, "ccccccg"

    .line 68
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 81
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    array-length p2, p1

    if-ne p2, p3, :cond_0

    aget-byte p2, p1, v9

    if-ne p2, p3, :cond_0

    .line 83
    aget-byte p1, p1, v2

    return p1

    :cond_0
    return v1

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method protected final readInputSI(Ljava/lang/String;IIII)D
    .locals 9

    if-ltz p2, :cond_1

    const/4 v0, 0x3

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    if-gt p3, v0, :cond_1

    const/4 v1, -0x1

    if-lt p5, v1, :cond_1

    const/4 v1, 0x7

    if-gt p5, v1, :cond_1

    const/16 v2, -0x67

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    const/16 v1, 0x1d

    .line 101
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v7, v8

    int-to-byte p2, p2

    .line 102
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v7, v1

    int-to-byte p2, p3

    .line 103
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v7, p3

    int-to-byte p2, p4

    .line 104
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v7, v0

    const/4 p2, 0x4

    int-to-byte p4, p5

    .line 105
    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    aput-object p4, v7, p2

    .line 106
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const/4 p4, 0x5

    aput-object p2, v7, p4

    const/4 p2, 0x6

    .line 107
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p5

    aput-object p5, v7, p2

    const-string v6, "ccccccg"

    .line 96
    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p2

    .line 109
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 111
    array-length p5, p2

    if-ne p5, p4, :cond_0

    aget-byte p4, p2, v8

    if-ne p4, p3, :cond_0

    const-string p1, "xf"

    .line 112
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object p1

    .line 113
    aget-object p1, p1, v8

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double p1, p1

    return-wide p1

    .line 116
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0xc1e

    new-array p4, v8, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, p3, p4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method protected final setSensorPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 53
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortLetterToPortNumber(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortNumber:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 55
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc21

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
