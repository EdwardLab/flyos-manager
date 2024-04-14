.class public Lcom/google/appinventor/components/runtime/Ev3Commands;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EV3:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a low-level interface to a LEGO MINDSTORMS EV3 robot, with functions to send system or direct commands to EV3 robots."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "Ev3Commands"

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public GetBatteryCurrent()D
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery current."
    .end annotation

    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    .line 95
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v8, v9

    .line 96
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v8, v1

    const/16 v3, -0x7f

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v7, "cg"

    .line 90
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 97
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    array-length v1, v0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    aget-byte v1, v0, v9

    if-ne v1, v2, :cond_0

    const-string v1, "xf"

    .line 99
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v0

    .line 100
    aget-object v0, v0, v9

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public GetBatteryVoltage()D
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery voltage."
    .end annotation

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    .line 73
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v8, v9

    .line 74
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v8, v1

    const/16 v3, -0x7f

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v7, "cg"

    .line 68
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 75
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    array-length v1, v0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    aget-byte v1, v0, v9

    if-ne v1, v2, :cond_0

    const-string v1, "xf"

    .line 77
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v0

    .line 78
    aget-object v0, v0, v9

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public GetFirmwareBuild()Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware build on EV3."
    .end annotation

    .line 185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    const/16 v3, 0x7f

    .line 191
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v8, v9

    .line 192
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v8, v1

    const/16 v3, -0x7f

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v6, 0x0

    const-string v7, "cg"

    .line 186
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 193
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    aget-byte v3, v1, v9

    if-ne v3, v2, :cond_0

    const-string v0, "xS"

    .line 196
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v0

    .line 197
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1e

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public GetFirmwareVersion()Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware version on EV3."
    .end annotation

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/Object;

    const/16 v2, 0xa

    .line 166
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/16 v2, 0x64

    .line 167
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v8, v1

    .line 168
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v10, 0x2

    aput-object v2, v8, v10

    const/16 v3, -0x7f

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v6, 0x0

    const-string v7, "ccg"

    .line 161
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v2

    .line 169
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    aget-byte v2, v1, v9

    if-ne v2, v10, :cond_0

    const-string v0, "xS"

    .line 172
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v0

    .line 173
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1e

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public GetHardwareVersion()Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the hardware version of EV3."
    .end annotation

    .line 209
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/Object;

    const/16 v2, 0x9

    .line 215
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/16 v2, 0x64

    .line 216
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v8, v1

    .line 217
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v10, 0x2

    aput-object v2, v8, v10

    const/16 v3, -0x7f

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v6, 0x0

    const-string v7, "ccg"

    .line 210
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v2

    .line 218
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    aget-byte v2, v1, v9

    if-ne v2, v10, :cond_0

    const-string v0, "xS"

    .line 221
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v0

    .line 222
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1e

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public GetOSBuild()Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the OS build on EV3."
    .end annotation

    .line 135
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/Object;

    const/16 v2, 0xc

    .line 141
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/16 v2, 0x64

    .line 142
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v8, v1

    .line 143
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v10, 0x2

    aput-object v2, v8, v10

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v6, 0x0

    const-string v7, "ccg"

    .line 136
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v2

    .line 144
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    aget-byte v2, v1, v9

    if-ne v2, v10, :cond_0

    const-string v0, "xS"

    .line 147
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v0

    .line 148
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1e

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public GetOSVersion()Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the OS version on EV3."
    .end annotation

    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/Object;

    .line 117
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/16 v2, 0x64

    .line 118
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v8, v1

    .line 119
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v10, 0x2

    aput-object v2, v8, v10

    const/16 v3, -0x7f

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v6, 0x0

    const-string v7, "ccg"

    .line 112
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v2

    .line 120
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    aget-byte v2, v1, v9

    if-ne v2, v10, :cond_0

    const-string v0, "xS"

    .line 122
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v0

    .line 123
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1e

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public KeepAlive(I)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keep the EV3 brick from shutdown for a period of time."
    .end annotation

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-ltz p1, :cond_1

    const/16 v3, 0xff

    if-le p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, -0x70

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v9, v1, [Ljava/lang/Object;

    int-to-byte p1, p1

    .line 57
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v9, v2

    const-string v8, "c"

    .line 52
    invoke-static/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 58
    invoke-virtual {p0, v0, p1, v2}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 48
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
