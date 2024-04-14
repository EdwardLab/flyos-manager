.class public Lgnu/kawa/functions/UnicodeUtils;
.super Ljava/lang/Object;
.source "UnicodeUtils.java"


# static fields
.field static final Cc:Lgnu/mapping/Symbol;

.field static final Cf:Lgnu/mapping/Symbol;

.field static final Cn:Lgnu/mapping/Symbol;

.field static final Co:Lgnu/mapping/Symbol;

.field static final Cs:Lgnu/mapping/Symbol;

.field static final Ll:Lgnu/mapping/Symbol;

.field static final Lm:Lgnu/mapping/Symbol;

.field static final Lo:Lgnu/mapping/Symbol;

.field static final Lt:Lgnu/mapping/Symbol;

.field static final Lu:Lgnu/mapping/Symbol;

.field static final Mc:Lgnu/mapping/Symbol;

.field static final Me:Lgnu/mapping/Symbol;

.field static final Mn:Lgnu/mapping/Symbol;

.field static final Nd:Lgnu/mapping/Symbol;

.field static final Nl:Lgnu/mapping/Symbol;

.field static final No:Lgnu/mapping/Symbol;

.field static final Pc:Lgnu/mapping/Symbol;

.field static final Pd:Lgnu/mapping/Symbol;

.field static final Pe:Lgnu/mapping/Symbol;

.field static final Pf:Lgnu/mapping/Symbol;

.field static final Pi:Lgnu/mapping/Symbol;

.field static final Po:Lgnu/mapping/Symbol;

.field static final Ps:Lgnu/mapping/Symbol;

.field static final Sc:Lgnu/mapping/Symbol;

.field static final Sk:Lgnu/mapping/Symbol;

.field static final Sm:Lgnu/mapping/Symbol;

.field static final So:Lgnu/mapping/Symbol;

.field static final Zl:Lgnu/mapping/Symbol;

.field static final Zp:Lgnu/mapping/Symbol;

.field static final Zs:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 207
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "Mc"

    .line 208
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Mc:Lgnu/mapping/Symbol;

    const-string v1, "Pc"

    .line 209
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pc:Lgnu/mapping/Symbol;

    const-string v1, "Cc"

    .line 210
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cc:Lgnu/mapping/Symbol;

    const-string v1, "Sc"

    .line 211
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sc:Lgnu/mapping/Symbol;

    const-string v1, "Pd"

    .line 212
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pd:Lgnu/mapping/Symbol;

    const-string v1, "Nd"

    .line 213
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Nd:Lgnu/mapping/Symbol;

    const-string v1, "Me"

    .line 214
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Me:Lgnu/mapping/Symbol;

    const-string v1, "Pe"

    .line 215
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pe:Lgnu/mapping/Symbol;

    const-string v1, "Pf"

    .line 216
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pf:Lgnu/mapping/Symbol;

    const-string v1, "Cf"

    .line 217
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cf:Lgnu/mapping/Symbol;

    const-string v1, "Pi"

    .line 218
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pi:Lgnu/mapping/Symbol;

    const-string v1, "Nl"

    .line 219
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Nl:Lgnu/mapping/Symbol;

    const-string v1, "Zl"

    .line 220
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zl:Lgnu/mapping/Symbol;

    const-string v1, "Ll"

    .line 221
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Ll:Lgnu/mapping/Symbol;

    const-string v1, "Sm"

    .line 222
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sm:Lgnu/mapping/Symbol;

    const-string v1, "Lm"

    .line 223
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lm:Lgnu/mapping/Symbol;

    const-string v1, "Sk"

    .line 224
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sk:Lgnu/mapping/Symbol;

    const-string v1, "Mn"

    .line 225
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Mn:Lgnu/mapping/Symbol;

    const-string v1, "Lo"

    .line 226
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lo:Lgnu/mapping/Symbol;

    const-string v1, "No"

    .line 227
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->No:Lgnu/mapping/Symbol;

    const-string v1, "Po"

    .line 228
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Po:Lgnu/mapping/Symbol;

    const-string v1, "So"

    .line 229
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->So:Lgnu/mapping/Symbol;

    const-string v1, "Zp"

    .line 230
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zp:Lgnu/mapping/Symbol;

    const-string v1, "Co"

    .line 231
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Co:Lgnu/mapping/Symbol;

    const-string v1, "Zs"

    .line 232
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zs:Lgnu/mapping/Symbol;

    const-string v1, "Ps"

    .line 233
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Ps:Lgnu/mapping/Symbol;

    const-string v1, "Cs"

    .line 234
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cs:Lgnu/mapping/Symbol;

    const-string v1, "Lt"

    .line 235
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lt:Lgnu/mapping/Symbol;

    const-string v1, "Cn"

    .line 236
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cn:Lgnu/mapping/Symbol;

    const-string v1, "Lu"

    .line 237
    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/UnicodeUtils;->Lu:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v1

    .line 31
    invoke-virtual {v1, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/text/BreakIterator;->first()I

    move-result v2

    .line 33
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v3

    :goto_0
    move v7, v3

    move v3, v2

    move v2, v7

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x0

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_1

    .line 40
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v4, :cond_2

    .line 47
    invoke-virtual {v0, p0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 50
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 54
    invoke-static {v4}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v4

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    .line 56
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :goto_3
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v3

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9

    .line 64
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ne v3, v0, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    .line 75
    :cond_1
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    :goto_1
    const/16 v6, 0x3a3

    const/16 v7, 0x3c3

    if-eq v5, v6, :cond_3

    if-eq v5, v7, :cond_3

    const/16 v6, 0x3c2

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v6, 0x1

    :goto_3
    if-ltz v5, :cond_4

    const/16 v8, 0x130

    if-eq v5, v8, :cond_4

    const/16 v8, 0x131

    if-eq v5, v8, :cond_4

    if-eqz v6, :cond_a

    :cond_4
    if-nez v1, :cond_5

    if-ltz v5, :cond_5

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    if-le v3, v4, :cond_7

    .line 89
    invoke-interface {p0, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_6

    return-object v4

    .line 93
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-gez v5, :cond_8

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    if-eqz v6, :cond_9

    const/16 v5, 0x3c3

    :cond_9
    int-to-char v4, v5

    .line 99
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static generalCategory(I)Lgnu/mapping/Symbol;
    .locals 0

    .line 108
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 170
    :pswitch_0
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Cn:Lgnu/mapping/Symbol;

    return-object p0

    .line 127
    :pswitch_1
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Pf:Lgnu/mapping/Symbol;

    return-object p0

    .line 131
    :pswitch_2
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Pi:Lgnu/mapping/Symbol;

    return-object p0

    .line 153
    :pswitch_3
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->So:Lgnu/mapping/Symbol;

    return-object p0

    .line 143
    :pswitch_4
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Sk:Lgnu/mapping/Symbol;

    return-object p0

    .line 117
    :pswitch_5
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Sc:Lgnu/mapping/Symbol;

    return-object p0

    .line 139
    :pswitch_6
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Sm:Lgnu/mapping/Symbol;

    return-object p0

    .line 151
    :pswitch_7
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Po:Lgnu/mapping/Symbol;

    return-object p0

    .line 113
    :pswitch_8
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Pc:Lgnu/mapping/Symbol;

    return-object p0

    .line 125
    :pswitch_9
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Pe:Lgnu/mapping/Symbol;

    return-object p0

    .line 161
    :pswitch_a
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Ps:Lgnu/mapping/Symbol;

    return-object p0

    .line 119
    :pswitch_b
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Pd:Lgnu/mapping/Symbol;

    return-object p0

    .line 163
    :pswitch_c
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Cs:Lgnu/mapping/Symbol;

    return-object p0

    .line 157
    :pswitch_d
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Co:Lgnu/mapping/Symbol;

    return-object p0

    .line 129
    :pswitch_e
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Cf:Lgnu/mapping/Symbol;

    return-object p0

    .line 115
    :pswitch_f
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Cc:Lgnu/mapping/Symbol;

    return-object p0

    .line 155
    :pswitch_10
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Zp:Lgnu/mapping/Symbol;

    return-object p0

    .line 135
    :pswitch_11
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Zl:Lgnu/mapping/Symbol;

    return-object p0

    .line 159
    :pswitch_12
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Zs:Lgnu/mapping/Symbol;

    return-object p0

    .line 149
    :pswitch_13
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->No:Lgnu/mapping/Symbol;

    return-object p0

    .line 133
    :pswitch_14
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Nl:Lgnu/mapping/Symbol;

    return-object p0

    .line 121
    :pswitch_15
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Nd:Lgnu/mapping/Symbol;

    return-object p0

    .line 111
    :pswitch_16
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Mc:Lgnu/mapping/Symbol;

    return-object p0

    .line 123
    :pswitch_17
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Me:Lgnu/mapping/Symbol;

    return-object p0

    .line 145
    :pswitch_18
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Mn:Lgnu/mapping/Symbol;

    return-object p0

    .line 147
    :pswitch_19
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Lo:Lgnu/mapping/Symbol;

    return-object p0

    .line 141
    :pswitch_1a
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Lm:Lgnu/mapping/Symbol;

    return-object p0

    .line 165
    :pswitch_1b
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Lt:Lgnu/mapping/Symbol;

    return-object p0

    .line 137
    :pswitch_1c
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Ll:Lgnu/mapping/Symbol;

    return-object p0

    .line 167
    :pswitch_1d
    sget-object p0, Lgnu/kawa/functions/UnicodeUtils;->Lu:Lgnu/mapping/Symbol;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isWhitespace(I)Z
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p0, v1, :cond_7

    const/16 v1, 0x9

    if-lt p0, v1, :cond_0

    const/16 v1, 0xd

    if-gt p0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x85

    const/4 v2, 0x0

    if-ge p0, v1, :cond_1

    return v2

    :cond_1
    if-eq p0, v1, :cond_7

    const/16 v1, 0xa0

    if-eq p0, v1, :cond_7

    const/16 v1, 0x1680

    if-eq p0, v1, :cond_7

    const/16 v1, 0x180e

    if-ne p0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x2000

    if-lt p0, v1, :cond_6

    const/16 v1, 0x3000

    if-le p0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x200a

    if-le p0, v3, :cond_5

    const/16 v3, 0x2028

    if-eq p0, v3, :cond_5

    const/16 v3, 0x2029

    if-eq p0, v3, :cond_5

    const/16 v3, 0x202f

    if-eq p0, v3, :cond_5

    const/16 v3, 0x205f

    if-eq p0, v3, :cond_5

    if-ne p0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0

    :cond_6
    :goto_1
    return v2

    :cond_7
    :goto_2
    return v0
.end method
