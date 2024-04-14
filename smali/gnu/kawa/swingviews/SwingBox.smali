.class Lgnu/kawa/swingviews/SwingBox;
.super Ljavax/swing/Box;
.source "SwingDisplay.java"

# interfaces
.implements Lgnu/kawa/models/ModelListener;


# instance fields
.field model:Lgnu/kawa/models/Box;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Box;Lgnu/kawa/models/Display;)V
    .locals 4

    .line 127
    invoke-virtual {p1}, Lgnu/kawa/models/Box;->getAxis()I

    move-result v0

    invoke-direct {p0, v0}, Ljavax/swing/Box;-><init>(I)V

    .line 128
    invoke-virtual {p1, p0}, Lgnu/kawa/models/Box;->addListener(Lgnu/kawa/models/ModelListener;)V

    .line 129
    invoke-virtual {p1}, Lgnu/kawa/models/Box;->getCellSpacing()Lgnu/kawa/models/Viewable;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lgnu/kawa/models/Box;->getComponentCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p2, p0}, Lgnu/kawa/models/Viewable;->makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V

    .line 135
    :cond_0
    invoke-virtual {p1, v2}, Lgnu/kawa/models/Box;->getComponent(I)Lgnu/kawa/models/Viewable;

    move-result-object v3

    invoke-interface {v3, p2, p0}, Lgnu/kawa/models/Viewable;->makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public modelUpdated(Lgnu/kawa/models/Model;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
