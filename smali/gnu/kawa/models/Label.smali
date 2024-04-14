.class public Lgnu/kawa/models/Label;
.super Lgnu/kawa/models/Model;
.source "Label.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;
.implements Ljava/io/Serializable;


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    .line 17
    iput-object p1, p0, Lgnu/kawa/models/Label;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lgnu/kawa/models/Label;->text:Ljava/lang/String;

    return-object v0
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-virtual {p1, p0, p2}, Lgnu/kawa/models/Display;->addLabel(Lgnu/kawa/models/Label;Ljava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lgnu/kawa/models/Label;->text:Ljava/lang/String;

    const-string p1, "text"

    .line 33
    invoke-virtual {p0, p1}, Lgnu/kawa/models/Label;->notifyListeners(Ljava/lang/String;)V

    return-void
.end method
