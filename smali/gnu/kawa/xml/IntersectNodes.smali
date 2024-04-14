.class public Lgnu/kawa/xml/IntersectNodes;
.super Lgnu/mapping/Procedure2;
.source "IntersectNodes.java"


# static fields
.field public static final exceptNodes:Lgnu/kawa/xml/IntersectNodes;

.field public static final intersectNodes:Lgnu/kawa/xml/IntersectNodes;


# instance fields
.field isExcept:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lgnu/kawa/xml/IntersectNodes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/kawa/xml/IntersectNodes;-><init>(Z)V

    sput-object v0, Lgnu/kawa/xml/IntersectNodes;->intersectNodes:Lgnu/kawa/xml/IntersectNodes;

    .line 19
    new-instance v0, Lgnu/kawa/xml/IntersectNodes;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/kawa/xml/IntersectNodes;-><init>(Z)V

    sput-object v0, Lgnu/kawa/xml/IntersectNodes;->exceptNodes:Lgnu/kawa/xml/IntersectNodes;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    iput-boolean p1, p0, Lgnu/kawa/xml/IntersectNodes;->isExcept:Z

    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 26
    new-instance v0, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 27
    new-instance v1, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v1}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 28
    new-instance v2, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v2}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 30
    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 31
    invoke-static {p2, v1}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 43
    :goto_0
    invoke-virtual {v0, v3}, Lgnu/kawa/xml/SortedNodes;->getSeq(I)Lgnu/lists/AbstractSequence;

    move-result-object v7

    if-nez v7, :cond_0

    return-object v2

    .line 46
    :cond_0
    invoke-virtual {v0, v3}, Lgnu/kawa/xml/SortedNodes;->getPos(I)I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ne v4, v9, :cond_1

    .line 54
    invoke-static {v7, v8, p2, v5}, Lgnu/lists/AbstractSequence;->compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I

    move-result v4

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    const/4 v4, 0x1

    :cond_2
    :goto_1
    if-lez v4, :cond_4

    .line 60
    invoke-virtual {v1, v6}, Lgnu/kawa/xml/SortedNodes;->getSeq(I)Lgnu/lists/AbstractSequence;

    move-result-object p2

    if-nez p2, :cond_3

    const/4 v4, -0x2

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v6, 0x1

    .line 68
    invoke-virtual {v1, v6}, Lgnu/kawa/xml/SortedNodes;->getPos(I)I

    move-result v5

    .line 69
    invoke-static {v7, v8, p2, v5}, Lgnu/lists/AbstractSequence;->compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I

    move-result v6

    move v11, v6

    move v6, v4

    move v4, v11

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 73
    :goto_3
    iget-boolean v9, p0, Lgnu/kawa/xml/IntersectNodes;->isExcept:Z

    if-eq v10, v9, :cond_6

    .line 74
    invoke-virtual {v2, v7, v8}, Lgnu/kawa/xml/SortedNodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
