.class public Lgnu/kawa/swingviews/SwingButton;
.super Ljavax/swing/JButton;
.source "SwingButton.java"

# interfaces
.implements Lgnu/kawa/models/ModelListener;


# instance fields
.field model:Lgnu/kawa/models/Button;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Button;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Lgnu/kawa/models/Button;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v0, Lgnu/kawa/swingviews/SwModel;

    invoke-direct {v0, p1}, Lgnu/kawa/swingviews/SwModel;-><init>(Lgnu/kawa/models/Button;)V

    invoke-virtual {p0, v0}, Lgnu/kawa/swingviews/SwingButton;->setModel(Ljavax/swing/ButtonModel;)V

    .line 16
    iput-object p1, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    .line 17
    invoke-virtual {p1}, Lgnu/kawa/models/Button;->getAction()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {v0}, Lgnu/kawa/swingviews/SwingDisplay;->makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/swingviews/SwingButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 20
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/kawa/models/Button;->addListener(Lgnu/kawa/models/ModelListener;)V

    .line 21
    invoke-virtual {p1}, Lgnu/kawa/models/Button;->getForeground()Ljava/awt/Color;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    invoke-super {p0, v0}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    .line 24
    :cond_1
    invoke-virtual {p1}, Lgnu/kawa/models/Button;->getBackground()Ljava/awt/Color;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 26
    invoke-super {p0, p1}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public modelUpdated(Lgnu/kawa/models/Model;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "text"

    if-ne p2, v0, :cond_0

    .line 55
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-ne p1, v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lgnu/kawa/models/Button;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "foreground"

    if-ne p2, v0, :cond_1

    .line 57
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-ne p1, v0, :cond_1

    .line 58
    invoke-virtual {v0}, Lgnu/kawa/models/Button;->getForeground()Ljava/awt/Color;

    move-result-object p1

    invoke-super {p0, p1}, Ljavax/swing/JButton;->setForeground(Ljava/awt/Color;)V

    goto :goto_0

    :cond_1
    const-string v0, "background"

    if-ne p2, v0, :cond_2

    .line 59
    iget-object p2, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-ne p1, p2, :cond_2

    .line 60
    invoke-virtual {p2}, Lgnu/kawa/models/Button;->getBackground()Ljava/awt/Color;

    move-result-object p1

    invoke-super {p0, p1}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-nez v0, :cond_0

    .line 48
    invoke-super {p0, p1}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0, p1}, Lgnu/kawa/models/Button;->setBackground(Ljava/awt/Color;)V

    :goto_0
    return-void
.end method

.method public setForeground(Ljava/awt/Color;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-nez v0, :cond_0

    .line 40
    invoke-super {p0, p1}, Ljavax/swing/JButton;->setForeground(Ljava/awt/Color;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, p1}, Lgnu/kawa/models/Button;->setForeground(Ljava/awt/Color;)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-nez v0, :cond_0

    .line 32
    invoke-super {p0, p1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Lgnu/kawa/models/Button;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
