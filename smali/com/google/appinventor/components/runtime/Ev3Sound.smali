.class public Lcom/google/appinventor/components/runtime/Ev3Sound;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EV3:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to sound functionalities on LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const-string v0, "Ev3Sound"

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public PlayTone(III)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the robot play a tone."
    .end annotation

    .line 43
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

    const/16 v3, 0x64

    if-gt p1, v3, :cond_1

    const/16 v3, 0xfa

    if-lt p2, v3, :cond_1

    const/16 v3, 0x2710

    if-gt p2, v3, :cond_1

    if-ltz p3, :cond_1

    const v3, 0xffff

    if-le p3, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, -0x6c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x4

    new-array v9, v3, [Ljava/lang/Object;

    .line 55
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v9, v2

    int-to-byte p1, p1

    .line 56
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v9, v1

    const/4 p1, 0x2

    int-to-short p2, p2

    .line 57
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v9, p1

    const/4 p1, 0x3

    int-to-short p2, p3

    .line 58
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v9, p1

    const-string v8, "cccc"

    .line 50
    invoke-static/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object p1

    .line 59
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/Ev3Sound;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void

    .line 46
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0xc1f

    new-array p3, v1, [Ljava/lang/Object;

    aput-object v0, p3, v2

    invoke-virtual {p1, p0, v0, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public StopSound()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop any sound on the robot."
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

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 73
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v2, -0x6c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "c"

    .line 68
    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v2

    .line 74
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/Ev3Sound;->sendCommand(Ljava/lang/String;[BZ)[B

    return-void
.end method
