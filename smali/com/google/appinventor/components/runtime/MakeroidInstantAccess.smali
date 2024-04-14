.class public Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/instantAccess.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;
    }
.end annotation


# instance fields
.field private final I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:Ljava/lang/String;

.field private I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Ljava/lang/String;

.field private final Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:Ljava/lang/String;

.field private final P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:Ljava/lang/String;

.field private final TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Ljava/lang/String;

.field private boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private final hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Ljava/lang/String;

.field private xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Ljava/lang/String;

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:I

    const-string v0, "Please check your Client ID property. Maybe it is empty?"

    .line 37
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:Ljava/lang/String;

    const-string v0, "Please check your Client Secret property. Maybe it is empty?"

    .line 38
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Ljava/lang/String;

    const-string v0, "Please check your user property. Maybe it is empty?"

    .line 39
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:Ljava/lang/String;

    const-string v0, "Error - no data"

    .line 40
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->Mn7MCs8byCcphc6u6vZkI1pXuzw5IvVJJPq0YTQ0xCW64cXQ1HYdJPP7QsOPqGr1:Ljava/lang/String;

    const-string v0, "Error - no message"

    .line 41
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->TcZoKXUijRhvOFm1gZ0ppEfXWxECqlUNNvncSPIfT3ZrTDcozo05OAb21mkMXciT:Ljava/lang/String;

    .line 46
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->context:Landroid/content/Context;

    const-string p1, "Instant Access"

    const-string v0, "Instant Access Created"

    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:I

    return p0
.end method


# virtual methods
.method public CheckStatus(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check the current status with a given username."
    .end annotation

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://dashboard.instantaccess.io/api/partner/status?client_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&client_secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&user_identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Ljava/lang/String;

    const-string v2, "Instant Access"

    const-string v3, "Error - no data"

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 86
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:I

    .line 87
    new-instance p1, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;

    invoke-direct {p1, p0, v4}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;-><init>(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v4

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_3
    :goto_0
    const-string p1, "Please check your user property. Maybe it is empty?"

    .line 83
    invoke-virtual {p0, v4, v3, p1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnStatusReceived(ZLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "User is null or empty."

    .line 84
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_1
    const-string p1, "Please check your Client Secret property. Maybe it is empty?"

    .line 80
    invoke-virtual {p0, v4, v3, p1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnStatusReceived(ZLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "Client Secret is null or empty."

    .line 81
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    const-string p1, "Please check your Client ID property. Maybe it is empty?"

    .line 77
    invoke-virtual {p0, v4, v3, p1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnStatusReceived(ZLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "Client ID is null or empty."

    .line 78
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ClientID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the client id."
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Ljava/lang/String;

    return-object v0
.end method

.method public ClientID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Ljava/lang/String;

    return-void
.end method

.method public ClientSecret()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the client secret."
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Ljava/lang/String;

    return-object v0
.end method

.method public ClientSecret(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Ljava/lang/String;

    return-void
.end method

.method public OnRequestSent(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "A event to detect that the login request was sent."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "OnRequestSent"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnStatusReceived(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "A event to detect that the status was received."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "OnStatusReceived"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Request(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start a request to user with the instant access login service."
    .end annotation

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://dashboard.instantaccess.io/api/partner/authorize?client_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&client_secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&user_identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->I88voynnB6lCbi2eFsNA2DcXYsTa46aEiMaovSB2sEx9V3gZP1qdgaJzEiYc8qjH:Ljava/lang/String;

    const-string v2, "Instant Access"

    const-string v3, "Error - no data"

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->boZncMwfbKhn9wEZVXOlCQaCALViR3x19GsnEC1EZxndIE2ufazY5HxCE0U58Zvt:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 63
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->xy1Y0dkIX1oFLPndkUFF3zQF6ijcSVPdmgekjoDrBgvDBhvpj0INgajUPNaUhxY6:I

    .line 64
    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;

    invoke-direct {v1, p0, v4}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;-><init>(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;B)V

    new-array p1, p1, [Ljava/lang/String;

    aput-object v0, p1, v4

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_3
    :goto_0
    const-string p1, "Please check your user property. Maybe it is empty?"

    .line 60
    invoke-virtual {p0, v4, v3, p1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnRequestSent(ZLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "User is null or empty."

    .line 61
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_1
    const-string p1, "Please check your Client Secret property. Maybe it is empty?"

    .line 57
    invoke-virtual {p0, v4, v3, p1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnRequestSent(ZLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "Client Secret is null or empty."

    .line 58
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :goto_2
    const-string p1, "Please check your Client ID property. Maybe it is empty?"

    .line 54
    invoke-virtual {p0, v4, v3, p1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnRequestSent(ZLjava/lang/String;Ljava/lang/String;)V

    const-string p1, "Client ID is null or empty."

    .line 55
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
