.class public Lgnu/kawa/models/Button;
.super Lgnu/kawa/models/Model;
.source "Button.java"


# instance fields
.field action:Ljava/lang/Object;

.field background:Ljava/awt/Color;

.field disabled:Z

.field foreground:Ljava/awt/Color;

.field text:Ljava/lang/String;

.field width:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lgnu/kawa/models/Button;->action:Ljava/lang/Object;

    return-object v0
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 1

    .line 41
    iget-object v0, p0, Lgnu/kawa/models/Button;->background:Ljava/awt/Color;

    return-object v0
.end method

.method public getForeground()Ljava/awt/Color;
    .locals 1

    .line 34
    iget-object v0, p0, Lgnu/kawa/models/Button;->foreground:Ljava/awt/Color;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lgnu/kawa/models/Button;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lgnu/kawa/models/Button;->disabled:Z

    return v0
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-virtual {p1, p0, p2}, Lgnu/kawa/models/Display;->addButton(Lgnu/kawa/models/Button;Ljava/lang/Object;)V

    return-void
.end method

.method public setAction(Ljava/lang/Object;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lgnu/kawa/models/Button;->action:Ljava/lang/Object;

    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lgnu/kawa/models/Button;->background:Ljava/awt/Color;

    const-string p1, "background"

    .line 45
    invoke-virtual {p0, p1}, Lgnu/kawa/models/Button;->notifyListeners(Ljava/lang/String;)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lgnu/kawa/models/Button;->disabled:Z

    return-void
.end method

.method public setForeground(Ljava/awt/Color;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lgnu/kawa/models/Button;->foreground:Ljava/awt/Color;

    const-string p1, "foreground"

    .line 38
    invoke-virtual {p0, p1}, Lgnu/kawa/models/Button;->notifyListeners(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lgnu/kawa/models/Button;->text:Ljava/lang/String;

    const-string p1, "text"

    .line 28
    invoke-virtual {p0, p1}, Lgnu/kawa/models/Button;->notifyListeners(Ljava/lang/String;)V

    return-void
.end method
