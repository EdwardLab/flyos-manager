.class public Lgnu/xquery/util/IntegerRange;
.super Lgnu/mapping/MethodProc;
.source "IntegerRange.java"


# static fields
.field public static final MAX_INT:Lgnu/math/IntNum;

.field public static final MIN_INT:Lgnu/math/IntNum;

.field public static final integerRange:Lgnu/xquery/util/IntegerRange;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lgnu/xquery/util/IntegerRange;

    const-string v1, "to"

    invoke-direct {v0, v1}, Lgnu/xquery/util/IntegerRange;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/util/IntegerRange;->integerRange:Lgnu/xquery/util/IntegerRange;

    const/high16 v0, -0x80000000

    .line 20
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/IntegerRange;->MIN_INT:Lgnu/math/IntNum;

    const v0, 0x7fffffff

    .line 21
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/IntegerRange;->MAX_INT:Lgnu/math/IntNum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lgnu/xquery/util/IntegerRange;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static integerRange(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/lists/Consumer;)V
    .locals 1

    .line 39
    sget-object v0, Lgnu/xquery/util/IntegerRange;->MIN_INT:Lgnu/math/IntNum;

    invoke-static {p0, v0}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    if-ltz v0, :cond_2

    sget-object v0, Lgnu/xquery/util/IntegerRange;->MAX_INT:Lgnu/math/IntNum;

    invoke-static {p1, v0}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 42
    invoke-virtual {p0}, Lgnu/math/IntNum;->intValue()I

    move-result p0

    .line 43
    invoke-virtual {p1}, Lgnu/math/IntNum;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_1

    .line 48
    :goto_0
    invoke-interface {p2, p0}, Lgnu/lists/Consumer;->writeInt(I)V

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 56
    :cond_2
    :goto_2
    invoke-static {p0, p1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 58
    invoke-interface {p2, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 59
    invoke-static {p0, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4

    .line 65
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 68
    invoke-static {v0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    invoke-static {v1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v0, v2, :cond_3

    if-eqz v0, :cond_3

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v1, v2, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    instance-of v2, v0, Lgnu/kawa/xml/UntypedAtomic;

    const/16 v3, 0xa

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    .line 75
    :cond_1
    instance-of v2, v1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v1

    .line 77
    :cond_2
    check-cast v0, Lgnu/math/IntNum;

    check-cast v1, Lgnu/math/IntNum;

    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-static {v0, v1, p1}, Lgnu/xquery/util/IntegerRange;->integerRange(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/lists/Consumer;)V

    :cond_3
    :goto_0
    return-void
.end method
