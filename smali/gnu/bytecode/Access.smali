.class public Lgnu/bytecode/Access;
.super Ljava/lang/Object;
.source "Access.java"


# static fields
.field public static final ABSTRACT:S = 0x400s

.field public static final ANNOTATION:S = 0x2000s

.field public static final BRIDGE:S = 0x40s

.field public static final CLASS_CONTEXT:C = 'C'

.field public static final CLASS_MODIFIERS:S = 0x7631s

.field public static final ENUM:S = 0x4000s

.field public static final FIELD_CONTEXT:C = 'F'

.field public static final FIELD_MODIFIERS:S = 0x50dfs

.field public static final FINAL:S = 0x10s

.field public static final INNERCLASS_CONTEXT:C = 'I'

.field public static final INNERCLASS_MODIFIERS:S = 0x761fs

.field public static final INTERFACE:S = 0x200s

.field public static final METHOD_CONTEXT:C = 'M'

.field public static final METHOD_MODIFIERS:S = 0x1dffs

.field public static final NATIVE:S = 0x100s

.field public static final PRIVATE:S = 0x2s

.field public static final PROTECTED:S = 0x4s

.field public static final PUBLIC:S = 0x1s

.field public static final STATIC:S = 0x8s

.field public static final STRICT:S = 0x800s

.field public static final SUPER:S = 0x20s

.field public static final SYNCHRONIZED:S = 0x20s

.field public static final SYNTHETIC:S = 0x1000s

.field public static final TRANSIENT:S = 0x80s

.field public static final VARARGS:S = 0x80s

.field public static final VOLATILE:S = 0x40s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, v0}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(IC)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x43

    const/16 v1, 0x4d

    if-ne p1, v0, :cond_0

    const/16 v2, 0x7631

    goto :goto_0

    :cond_0
    const/16 v2, 0x49

    if-ne p1, v2, :cond_1

    const/16 v2, 0x761f

    goto :goto_0

    :cond_1
    const/16 v2, 0x46

    if-ne p1, v2, :cond_2

    const/16 v2, 0x50df

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    const/16 v2, 0x1dff

    goto :goto_0

    :cond_3
    const/16 v2, 0x7fff

    :goto_0
    not-int v3, v2

    and-int/2addr v3, p0

    int-to-short v3, v3

    and-int/2addr p0, v2

    .line 79
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_4

    const-string v4, " public"

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    and-int/lit8 v4, p0, 0x2

    if-eqz v4, :cond_5

    const-string v4, " private"

    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    and-int/lit8 v4, p0, 0x4

    if-eqz v4, :cond_6

    const-string v4, " protected"

    .line 82
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    and-int/lit8 v4, p0, 0x8

    if-eqz v4, :cond_7

    const-string v4, " static"

    .line 83
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    and-int/lit8 v4, p0, 0x10

    if-eqz v4, :cond_8

    const-string v4, " final"

    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    and-int/lit8 v4, p0, 0x20

    if-eqz v4, :cond_a

    if-ne p1, v0, :cond_9

    const-string v0, " super"

    goto :goto_1

    :cond_9
    const-string v0, " synchronized"

    .line 86
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_c

    if-ne p1, v1, :cond_b

    const-string v0, " bridge"

    goto :goto_2

    :cond_b
    const-string v0, " volatile"

    .line 88
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_e

    if-ne p1, v1, :cond_d

    const-string p1, " varargs"

    goto :goto_3

    :cond_d
    const-string p1, " transient"

    .line 90
    :goto_3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    and-int/lit16 p1, p0, 0x100

    if-eqz p1, :cond_f

    const-string p1, " native"

    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    and-int/lit16 p1, p0, 0x200

    if-eqz p1, :cond_10

    const-string p1, " interface"

    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    and-int/lit16 p1, p0, 0x400

    if-eqz p1, :cond_11

    const-string p1, " abstract"

    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    and-int/lit16 p1, p0, 0x800

    if-eqz p1, :cond_12

    const-string p1, " strict"

    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    and-int/lit16 p1, p0, 0x4000

    if-eqz p1, :cond_13

    const-string p1, " enum"

    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    and-int/lit16 p1, p0, 0x1000

    if-eqz p1, :cond_14

    const-string p1, " synthetic"

    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_14
    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_15

    const-string p0, " annotation"

    .line 97
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_15
    if-eqz v3, :cond_16

    const-string p0, " unknown-flags:0x"

    .line 100
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_16
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
