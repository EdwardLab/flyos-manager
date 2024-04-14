.class public Lgnu/xquery/util/BooleanValue;
.super Lgnu/mapping/Procedure1;
.source "BooleanValue.java"


# static fields
.field public static final booleanValue:Lgnu/xquery/util/BooleanValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lgnu/xquery/util/BooleanValue;

    const-string v1, "boolean-value"

    invoke-direct {v0, v1}, Lgnu/xquery/util/BooleanValue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/util/BooleanValue;->booleanValue:Lgnu/xquery/util/BooleanValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 20
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v0, "gnu.xquery.util.CompileMisc:validateBooleanValue"

    invoke-virtual {p0, p1, v0}, Lgnu/xquery/util/BooleanValue;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static booleanValue(Ljava/lang/Object;)Z
    .locals 7

    .line 26
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 27
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 28
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    instance-of v0, p0, Lgnu/math/RealNum;

    if-nez v0, :cond_1

    instance-of v0, p0, Lgnu/math/Numeric;

    if-nez v0, :cond_3

    .line 31
    :cond_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    if-eqz p0, :cond_2

    .line 32
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 34
    :cond_3
    instance-of v0, p0, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_4

    return v2

    .line 36
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_9

    instance-of v0, p0, Lgnu/text/Path;

    if-nez v0, :cond_9

    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 40
    :cond_5
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_8

    .line 42
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    .line 43
    invoke-virtual {v0, v1}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v3

    .line 44
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v3, v4, :cond_6

    return v1

    .line 46
    :cond_6
    invoke-virtual {v0, v1}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v0

    if-gez v0, :cond_7

    .line 48
    invoke-static {v3}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 49
    :cond_7
    instance-of v0, v3, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_8

    return v2

    .line 52
    :cond_8
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "fn:boolean"

    const-string v3, "boolean-convertible-value"

    invoke-direct {v0, v1, v2, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_9
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public static not(Ljava/lang/Object;)Z
    .locals 0

    .line 57
    invoke-static {p0}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-static {p1}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method
