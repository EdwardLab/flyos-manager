.class public Lgnu/kawa/xml/SelfAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "SelfAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/SelfAxis;
    .locals 1

    .line 13
    new-instance v0, Lgnu/kawa/xml/SelfAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/SelfAxis;-><init>()V

    .line 14
    iput-object p0, v0, Lgnu/kawa/xml/SelfAxis;->type:Lgnu/lists/NodePredicate;

    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lgnu/kawa/xml/SelfAxis;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v0, p1, p2}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    :cond_0
    return-void
.end method
