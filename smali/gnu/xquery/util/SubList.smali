.class public Lgnu/xquery/util/SubList;
.super Lgnu/mapping/MethodProc;
.source "SubList.java"


# static fields
.field public static final subList:Lgnu/xquery/util/SubList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lgnu/xquery/util/SubList;

    invoke-direct {v0}, Lgnu/xquery/util/SubList;-><init>()V

    sput-object v0, Lgnu/xquery/util/SubList;->subList:Lgnu/xquery/util/SubList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static subList(Ljava/lang/Object;DDLgnu/lists/Consumer;)V
    .locals 5

    .line 20
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_4

    .line 22
    check-cast p0, Lgnu/mapping/Values;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-double v2, v0

    cmpg-double v4, v2, p1

    if-gez v4, :cond_1

    .line 27
    invoke-virtual {p0, v1}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v1

    if-gez v1, :cond_0

    return-void

    :cond_1
    move p1, v1

    :goto_0
    add-int/lit8 p2, v0, 0x1

    int-to-double v2, v0

    cmpg-double v0, v2, p3

    if-gez v0, :cond_3

    .line 35
    invoke-virtual {p0, p1}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    move v0, p2

    goto :goto_0

    .line 40
    :cond_3
    :goto_1
    invoke-virtual {p0, v1, p1, p5}, Lgnu/mapping/Values;->consumeIRange(IILgnu/lists/Consumer;)I

    goto :goto_2

    :cond_4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_5

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    cmpl-double v0, p3, p1

    if-ltz v0, :cond_5

    .line 45
    invoke-interface {p5, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6

    .line 51
    iget-object v5, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 52
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    .line 54
    sget-object v3, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 55
    invoke-virtual {p1, v3}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 56
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    if-eq v4, v3, :cond_0

    .line 57
    invoke-static {v4}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    add-double/2addr v3, v1

    .line 59
    invoke-static/range {v0 .. v5}, Lgnu/xquery/util/SubList;->subList(Ljava/lang/Object;DDLgnu/lists/Consumer;)V

    return-void
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x3002

    return v0
.end method
