.class public Lgnu/kawa/xml/FollowingSiblingAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "FollowingSiblingAxis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/FollowingSiblingAxis;
    .locals 1

    .line 13
    new-instance v0, Lgnu/kawa/xml/FollowingSiblingAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/FollowingSiblingAxis;-><init>()V

    .line 14
    iput-object p0, v0, Lgnu/kawa/xml/FollowingSiblingAxis;->type:Lgnu/lists/NodePredicate;

    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .locals 3

    .line 20
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    .line 23
    :goto_0
    iget-object v1, p0, Lgnu/kawa/xml/FollowingSiblingAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_0
.end method
