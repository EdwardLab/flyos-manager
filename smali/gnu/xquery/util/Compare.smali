.class public Lgnu/xquery/util/Compare;
.super Lgnu/mapping/Procedure2;
.source "Compare.java"


# static fields
.field public static final $Eq:Lgnu/xquery/util/Compare;

.field public static final $Ex$Eq:Lgnu/xquery/util/Compare;

.field public static final $Gr:Lgnu/xquery/util/Compare;

.field public static final $Gr$Eq:Lgnu/xquery/util/Compare;

.field public static final $Ls:Lgnu/xquery/util/Compare;

.field public static final $Ls$Eq:Lgnu/xquery/util/Compare;

.field static final LENIENT_COMPARISON:I = 0x40

.field static final LENIENT_EQ:I = 0x48

.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final RESULT_NAN:I = -0x2

.field static final RESULT_NEQ:I = -0x3

.field static final TRUE_IF_EQU:I = 0x8

.field static final TRUE_IF_GRT:I = 0x10

.field static final TRUE_IF_LSS:I = 0x4

.field static final TRUE_IF_NAN:I = 0x2

.field static final TRUE_IF_NEQ:I = 0x1

.field static final VALUE_COMPARISON:I = 0x20

.field public static final valEq:Lgnu/xquery/util/Compare;

.field public static final valGe:Lgnu/xquery/util/Compare;

.field public static final valGt:Lgnu/xquery/util/Compare;

.field public static final valLe:Lgnu/xquery/util/Compare;

.field public static final valLt:Lgnu/xquery/util/Compare;

.field public static final valNe:Lgnu/xquery/util/Compare;


# instance fields
.field flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "="

    const/16 v1, 0x8

    .line 234
    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Eq:Lgnu/xquery/util/Compare;

    const-string v0, "!="

    const/16 v1, 0x17

    .line 235
    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Ex$Eq:Lgnu/xquery/util/Compare;

    const-string v0, ">"

    const/16 v1, 0x10

    .line 237
    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Gr:Lgnu/xquery/util/Compare;

    const-string v0, ">="

    const/16 v1, 0x18

    .line 238
    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Gr$Eq:Lgnu/xquery/util/Compare;

    const-string v0, "<"

    const/4 v1, 0x4

    .line 239
    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Ls:Lgnu/xquery/util/Compare;

    const-string v0, "<="

    const/16 v1, 0xc

    .line 240
    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Ls$Eq:Lgnu/xquery/util/Compare;

    const-string v0, "eq"

    const/16 v1, 0x28

    .line 242
    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valEq:Lgnu/xquery/util/Compare;

    const-string v0, "ne"

    const/16 v1, 0x37

    .line 244
    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valNe:Lgnu/xquery/util/Compare;

    const-string v0, "gt"

    const/16 v1, 0x30

    .line 246
    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valGt:Lgnu/xquery/util/Compare;

    const-string v0, "ge"

    const/16 v1, 0x38

    .line 248
    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valGe:Lgnu/xquery/util/Compare;

    const-string v0, "lt"

    const/16 v1, 0x24

    .line 250
    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valLt:Lgnu/xquery/util/Compare;

    const-string v0, "le"

    const/16 v1, 0x2c

    .line 252
    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valLe:Lgnu/xquery/util/Compare;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .locals 4

    .line 62
    instance-of v0, p1, Lgnu/mapping/Values;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 64
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Values;

    const/4 p1, 0x0

    .line 68
    :goto_0
    invoke-virtual {v0, p1}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v3

    if-gez v3, :cond_0

    return v2

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    .line 71
    invoke-virtual {v0, p1}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    move p1, v3

    goto :goto_0

    .line 76
    :cond_2
    instance-of v0, p2, Lgnu/mapping/Values;

    if-eqz v0, :cond_5

    .line 78
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Values;

    const/4 p2, 0x0

    .line 82
    :goto_1
    invoke-virtual {v0, p2}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v3

    if-gez v3, :cond_3

    return v2

    :cond_3
    shl-int/lit8 p2, p2, 0x1

    .line 85
    invoke-virtual {v0, p2}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result p2

    if-eqz p2, :cond_4

    return v1

    :cond_4
    move p2, v3

    goto :goto_1

    .line 90
    :cond_5
    invoke-static {p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result p0

    return p0
.end method

.method public static atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .locals 6

    .line 104
    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    instance-of v0, p2, Lgnu/math/DateTime;

    if-eqz v0, :cond_1

    .line 110
    move-object v0, p2

    check-cast v0, Lgnu/math/DateTime;

    invoke-virtual {v0}, Lgnu/math/DateTime;->components()I

    move-result v0

    invoke-static {p1, v0}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_1
    instance-of v0, p2, Lgnu/math/Duration;

    if-eqz v0, :cond_2

    .line 112
    move-object v0, p2

    check-cast v0, Lgnu/math/Duration;

    invoke-virtual {v0}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-static {p1, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p1

    goto :goto_0

    .line 113
    :cond_2
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 114
    new-instance v0, Lgnu/math/DFloNum;

    invoke-direct {v0, p1}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    .line 115
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 116
    sget-object v0, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 120
    :cond_4
    :goto_0
    instance-of v0, p2, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_9

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_5

    goto :goto_1

    .line 125
    :cond_5
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_6

    .line 126
    move-object v0, p1

    check-cast v0, Lgnu/math/DateTime;

    invoke-virtual {v0}, Lgnu/math/DateTime;->components()I

    move-result v0

    invoke-static {p2, v0}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p2

    goto :goto_1

    .line 127
    :cond_6
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_7

    .line 128
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    invoke-virtual {v0}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-static {p2, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p2

    goto :goto_1

    .line 129
    :cond_7
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 130
    new-instance v0, Lgnu/math/DFloNum;

    invoke-direct {v0, p2}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_1

    .line 131
    :cond_8
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 132
    sget-object v0, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v0, p2}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 137
    :cond_9
    :goto_1
    instance-of v0, p1, Ljava/lang/Number;

    const-string v1, "values cannot be compared"

    const/4 v2, 0x0

    const/4 v3, -0x3

    if-nez v0, :cond_17

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_a

    goto/16 :goto_8

    .line 183
    :cond_a
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_d

    .line 185
    instance-of p3, p2, Lgnu/mapping/Symbol;

    if-eqz p3, :cond_c

    invoke-static {p0}, Lgnu/xquery/util/Compare;->equalityComparison(I)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v2, -0x2

    goto :goto_6

    :cond_c
    :goto_2
    const/4 v2, -0x3

    goto :goto_6

    .line 190
    :cond_d
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_10

    .line 192
    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_c

    .line 194
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 195
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-ne p1, p2, :cond_e

    goto :goto_6

    :cond_e
    if-eqz p2, :cond_f

    :goto_3
    const/4 v2, -0x1

    goto :goto_6

    :cond_f
    :goto_4
    const/4 v2, 0x1

    goto :goto_6

    .line 201
    :cond_10
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_c

    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_11

    goto :goto_2

    .line 205
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_12

    .line 209
    invoke-virtual {p3, p1, p2}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_5

    .line 212
    :cond_12
    invoke-static {p1, p2}, Lgnu/xquery/util/NamedCollator;->codepointCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_5
    if-gez p1, :cond_13

    goto :goto_3

    :cond_13
    if-lez p1, :cond_14

    goto :goto_4

    :cond_14
    :goto_6
    if-ne v2, v3, :cond_16

    and-int/lit8 p1, p0, 0x40

    if-eqz p1, :cond_15

    goto :goto_7

    .line 216
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 217
    :cond_16
    :goto_7
    invoke-static {v2, p0}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result p0

    return p0

    .line 139
    :cond_17
    :goto_8
    instance-of p3, p1, Lgnu/math/Duration;

    if-eqz p3, :cond_1c

    .line 141
    instance-of p3, p2, Lgnu/math/Duration;

    if-nez p3, :cond_19

    :cond_18
    :goto_9
    const/4 p1, -0x3

    goto :goto_a

    .line 145
    :cond_19
    check-cast p1, Lgnu/math/Duration;

    .line 146
    check-cast p2, Lgnu/math/Duration;

    .line 147
    iget-object p3, p1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iget-object v0, p2, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    if-ne p3, v0, :cond_1a

    iget-object p3, p1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v0, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-ne p3, v0, :cond_1b

    :cond_1a
    invoke-static {p0}, Lgnu/xquery/util/Compare;->equalityComparison(I)Z

    move-result p3

    if-nez p3, :cond_1b

    goto :goto_9

    .line 151
    :cond_1b
    invoke-static {p1, p2}, Lgnu/math/Duration;->compare(Lgnu/math/Duration;Lgnu/math/Duration;)I

    move-result p1

    goto :goto_a

    .line 154
    :cond_1c
    instance-of p3, p1, Lgnu/math/DateTime;

    if-eqz p3, :cond_20

    .line 156
    instance-of p3, p2, Lgnu/math/DateTime;

    if-nez p3, :cond_1d

    goto :goto_9

    .line 160
    :cond_1d
    check-cast p1, Lgnu/math/DateTime;

    .line 161
    check-cast p2, Lgnu/math/DateTime;

    .line 162
    invoke-virtual {p1}, Lgnu/math/DateTime;->components()I

    move-result p3

    .line 163
    invoke-virtual {p2}, Lgnu/math/DateTime;->components()I

    move-result v0

    if-eq p3, v0, :cond_1e

    goto :goto_9

    .line 166
    :cond_1e
    invoke-static {p0}, Lgnu/xquery/util/Compare;->equalityComparison(I)Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 v0, 0x70

    if-eq p3, v0, :cond_1f

    const/16 v0, 0xe

    if-eq p3, v0, :cond_1f

    const/16 v0, 0x7e

    if-eq p3, v0, :cond_1f

    goto :goto_9

    .line 172
    :cond_1f
    invoke-static {p1, p2}, Lgnu/math/DateTime;->compare(Lgnu/math/DateTime;Lgnu/math/DateTime;)I

    move-result p1

    goto :goto_a

    .line 175
    :cond_20
    instance-of p3, p2, Lgnu/math/Duration;

    if-nez p3, :cond_18

    instance-of p3, p2, Lgnu/math/DateTime;

    if-eqz p3, :cond_21

    goto :goto_9

    .line 178
    :cond_21
    invoke-static {p1, p2, v2}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result p1

    :goto_a
    if-ne p1, v3, :cond_23

    and-int/lit8 p2, p0, 0x40

    if-eqz p2, :cond_22

    goto :goto_b

    .line 180
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_23
    :goto_b
    invoke-static {p1, p0}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result p0

    return p0
.end method

.method public static equalityComparison(I)Z
    .locals 3

    and-int/lit8 v0, p0, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-ne v0, p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;
    .locals 2

    .line 34
    new-instance v0, Lgnu/xquery/util/Compare;

    invoke-direct {v0}, Lgnu/xquery/util/Compare;-><init>()V

    .line 35
    invoke-virtual {v0, p0}, Lgnu/xquery/util/Compare;->setName(Ljava/lang/String;)V

    .line 36
    sget-object p0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateCompare"

    invoke-virtual {v0, p0, v1}, Lgnu/xquery/util/Compare;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    iput p1, v0, Lgnu/xquery/util/Compare;->flags:I

    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 222
    iget v0, p0, Lgnu/xquery/util/Compare;->flags:I

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    .line 224
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_3

    .line 225
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    iget v0, p0, Lgnu/xquery/util/Compare;->flags:I

    invoke-static {p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2, v2}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :cond_3
    :goto_1
    return-object p2

    :cond_4
    :goto_2
    return-object p1

    .line 231
    :cond_5
    invoke-static {v0, p1, p2, v2}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object p1
.end method
