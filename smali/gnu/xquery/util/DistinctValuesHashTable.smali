.class Lgnu/xquery/util/DistinctValuesHashTable;
.super Lgnu/kawa/util/GeneralHashTable;
.source "DistinctValues.java"


# instance fields
.field collator:Lgnu/xquery/util/NamedCollator;


# direct methods
.method public constructor <init>(Lgnu/xquery/util/NamedCollator;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 79
    iput-object p1, p0, Lgnu/xquery/util/DistinctValuesHashTable;->collator:Lgnu/xquery/util/NamedCollator;

    return-void
.end method


# virtual methods
.method public hash(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 86
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    instance-of v1, p1, Lgnu/math/RealNum;

    if-nez v1, :cond_1

    instance-of v1, p1, Lgnu/math/Numeric;

    if-nez v1, :cond_3

    .line 89
    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    return v0

    .line 96
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 103
    :cond_0
    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/16 v0, 0x48

    .line 105
    iget-object v1, p0, Lgnu/xquery/util/DistinctValuesHashTable;->collator:Lgnu/xquery/util/NamedCollator;

    invoke-static {v0, p1, p2, v1}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result p1

    return p1
.end method
