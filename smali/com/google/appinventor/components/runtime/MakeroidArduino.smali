.class public Lcom/google/appinventor/components/runtime/MakeroidArduino;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Arduino USB Serial Component"
    iconName = "images/arduino.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "physicaloid.jar"
    }
.end annotation


# instance fields
.field private YvCSL3NGR2QTRYJR2TwKp0VDudhjPNaOEVNDS5yB8p5C86x6HrXaW1BAbVOWs3Le:I

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/16 v0, 0x2580

    .line 37
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidArduino;->YvCSL3NGR2QTRYJR2TwKp0VDudhjPNaOEVNDS5yB8p5C86x6HrXaW1BAbVOWs3Le:I

    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidArduino;->context:Landroid/content/Context;

    const-string p1, "Makeroid Arduino USB Serial Component"

    const-string v0, "Created"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AfterReadArduino(ZLjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered after Read function"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "AfterRead"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BaudRate(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Default baud rate is 9600 bps"
    .end annotation

    .line 65
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidArduino;->YvCSL3NGR2QTRYJR2TwKp0VDudhjPNaOEVNDS5yB8p5C86x6HrXaW1BAbVOWs3Le:I

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/Physicaloid;->setBaudrate(I)Z

    .line 67
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Baud Rate: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid Arduino USB Serial Component"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public CloseArduino()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Closes Arduino Connection"
    .end annotation

    const-string v0, "Makeroid Arduino USB Serial Component"

    const-string v1, "Closing connection"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v0}, Lcom/physicaloid/lib/Physicaloid;->close()Z

    move-result v0

    return v0
.end method

.method public InitializeArduino()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes Arduino Connection"
    .end annotation

    .line 47
    new-instance v0, Lcom/physicaloid/lib/Physicaloid;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidArduino;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/physicaloid/lib/Physicaloid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    const-string v0, "Makeroid Arduino USB Serial Component"

    const-string v1, "Initialized"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public IsOpenedArduino()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true when the Arduino connection is open"
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v0}, Lcom/physicaloid/lib/Physicaloid;->isOpened()Z

    move-result v0

    return v0
.end method

.method public OpenArduino()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens Arduino Connection"
    .end annotation

    const-string v0, "Makeroid Arduino USB Serial Component"

    const-string v1, "Opening connection"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v0}, Lcom/physicaloid/lib/Physicaloid;->open()Z

    move-result v0

    return v0
.end method

.method public ReadArduino()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Read from Serial"
    .end annotation

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 76
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v1, v0}, Lcom/physicaloid/lib/Physicaloid;->read([B)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    if-lez v1, :cond_0

    .line 78
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    move-object v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Makeroid Arduino USB Serial Component"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidArduino;->AfterReadArduino(ZLjava/lang/String;)V

    return-void
.end method

.method public WriteArduino(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Write Data to Serial"
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidArduino;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/physicaloid/lib/Physicaloid;

    invoke-virtual {v0, p1}, Lcom/physicaloid/lib/Physicaloid;->write([B)I

    :cond_0
    return-void
.end method
