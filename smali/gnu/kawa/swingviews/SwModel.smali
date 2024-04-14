.class Lgnu/kawa/swingviews/SwModel;
.super Ljavax/swing/DefaultButtonModel;
.source "SwingButton.java"


# instance fields
.field model:Lgnu/kawa/models/Button;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Button;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljavax/swing/DefaultButtonModel;-><init>()V

    .line 70
    iput-object p1, p0, Lgnu/kawa/swingviews/SwModel;->model:Lgnu/kawa/models/Button;

    .line 71
    invoke-virtual {p1}, Lgnu/kawa/models/Button;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/swingviews/SwModel;->setActionCommand(Ljava/lang/String;)V

    return-void
.end method
