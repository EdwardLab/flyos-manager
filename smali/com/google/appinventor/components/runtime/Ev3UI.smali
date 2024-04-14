.class public Lcom/google/appinventor/components/runtime/Ev3UI;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EV3:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a LEGO MINDSTORMS EV3 robot, with functions to draw graphs on EV3 screen."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "Ev3UI"

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public DrawCircle(IIIIZ)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a circle on the screen."
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "DrawCircle"

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    if-gez p4, :cond_2

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    new-array p3, v0, [Ljava/lang/Object;

    aput-object v2, p3, v1

    invoke-virtual {p1, p0, v2, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/16 v3, -0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x4

    if-eqz p5, :cond_3

    const/16 p5, 0x18

    goto :goto_0

    :cond_3
    const/4 p5, 0x4

    .line 191
    :goto_0
    invoke-static {p5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p5

    aput-object p5, v8, v1

    int-to-byte p1, p1

    .line 192
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v8, v0

    const/4 p1, 0x2

    int-to-short p2, p2

    .line 193
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v8, p1

    const/4 p1, 0x3

    int-to-short p2, p3

    .line 194
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v8, p1

    int-to-short p1, p4

    .line 195
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    aput-object p1, v8, v7

    const-string v7, "ccccc"

    .line 186
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 196
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    const/16 v3, -0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v8, v0, [Ljava/lang/Object;

    .line 203
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v8, v1

    const-string v7, "c"

    .line 198
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 204
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method

.method public DrawIcon(IIIII)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a built-in icon on screen."
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "DrawIcon"

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    new-array p3, v0, [Ljava/lang/Object;

    aput-object v2, p3, v1

    invoke-virtual {p1, p0, v2, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v3, -0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    new-array v8, v7, [Ljava/lang/Object;

    .line 89
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v8, v1

    int-to-byte p1, p1

    .line 90
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v8, v0

    const/4 p1, 0x2

    int-to-short p2, p2

    .line 91
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v8, p1

    const/4 p1, 0x3

    int-to-short p2, p3

    .line 92
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v8, p1

    const/4 p1, 0x4

    .line 93
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v8, p1

    const/4 p1, 0x5

    .line 94
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v8, p1

    const-string v7, "cccccc"

    .line 84
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 95
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    new-array v8, v0, [Ljava/lang/Object;

    .line 102
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v8, v1

    const-string v7, "c"

    .line 97
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 103
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method

.method public DrawLine(IIIII)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a line on the screen."
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "DrawLine"

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    new-array p3, v0, [Ljava/lang/Object;

    aput-object v2, p3, v1

    invoke-virtual {p1, p0, v2, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v3, -0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x3

    .line 123
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v1

    int-to-byte p1, p1

    .line 124
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v8, v0

    const/4 p1, 0x2

    int-to-short p2, p2

    .line 125
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v8, p1

    int-to-short p1, p3

    .line 126
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    aput-object p1, v8, v7

    const/4 p1, 0x4

    int-to-short p2, p4

    .line 127
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v8, p1

    const/4 p1, 0x5

    int-to-short p2, p5

    .line 128
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v8, p1

    const-string v7, "cccccc"

    .line 118
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 129
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    new-array v8, v0, [Ljava/lang/Object;

    .line 136
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v8, v1

    const-string v7, "c"

    .line 131
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 137
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method

.method public DrawPoint(III)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a point on the screen."
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "DrawPoint"

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    new-array p3, v0, [Ljava/lang/Object;

    aput-object v2, p3, v1

    invoke-virtual {p1, p0, v2, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v3, -0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x2

    .line 57
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v1

    int-to-byte p1, p1

    .line 58
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v8, v0

    int-to-short p1, p2

    .line 59
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    aput-object p1, v8, v7

    const/4 p1, 0x3

    int-to-short p2, p3

    .line 60
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v8, p1

    const-string v7, "cccc"

    .line 52
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 61
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    new-array v8, v0, [Ljava/lang/Object;

    .line 68
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v8, v1

    const-string v7, "c"

    .line 63
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 69
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method

.method public DrawRect(IIIIIZ)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a rectangle on the screen."
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "DrawRect"

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 148
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    new-array p3, v0, [Ljava/lang/Object;

    aput-object v2, p3, v1

    invoke-virtual {p1, p0, v2, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v3, -0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    new-array v8, v7, [Ljava/lang/Object;

    if-eqz p6, :cond_1

    const/16 p6, 0x9

    goto :goto_0

    :cond_1
    const/16 p6, 0xa

    .line 157
    :goto_0
    invoke-static {p6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p6

    aput-object p6, v8, v1

    int-to-byte p1, p1

    .line 158
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v8, v0

    const/4 p1, 0x2

    int-to-short p2, p2

    .line 159
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v8, p1

    const/4 p1, 0x3

    int-to-short p2, p3

    .line 160
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v8, p1

    const/4 p1, 0x4

    int-to-short p2, p4

    .line 161
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v8, p1

    const/4 p1, 0x5

    int-to-short p2, p5

    .line 162
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v8, p1

    const-string v7, "cccccc"

    .line 152
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 163
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    const/16 v3, -0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v8, v0, [Ljava/lang/Object;

    .line 170
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v8, v1

    const-string v7, "c"

    .line 165
    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 171
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method

.method public FillScreen(I)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Fill the screen with a color."
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "FillScreen"

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 215
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1f

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-virtual {p1, p0, v3, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v4, -0x7c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Object;

    const/16 v8, 0x13

    .line 224
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v9, v1

    int-to-byte p1, p1

    .line 225
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v9, v0

    const/4 p1, 0x2

    aput-object v2, v9, p1

    const/4 p1, 0x3

    aput-object v2, v9, p1

    const-string v8, "cccc"

    .line 219
    invoke-static/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 228
    invoke-virtual {p0, v3, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    new-array v9, v0, [Ljava/lang/Object;

    .line 235
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v9, v1

    const-string v8, "c"

    .line 230
    invoke-static/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 236
    invoke-virtual {p0, v3, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method
