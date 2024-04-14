.class public Lgnu/kawa/xml/XStringType;
.super Lgnu/kawa/xml/XDataType;
.source "XStringType.java"


# static fields
.field public static final ENTITYType:Lgnu/kawa/xml/XStringType;

.field public static final IDREFType:Lgnu/kawa/xml/XStringType;

.field public static final IDType:Lgnu/kawa/xml/XStringType;

.field public static final NCNameType:Lgnu/kawa/xml/XStringType;

.field public static final NMTOKENType:Lgnu/kawa/xml/XStringType;

.field public static final NameType:Lgnu/kawa/xml/XStringType;

.field static XStringType:Lgnu/bytecode/ClassType;

.field public static final languageType:Lgnu/kawa/xml/XStringType;

.field public static final normalizedStringType:Lgnu/kawa/xml/XStringType;

.field public static final tokenType:Lgnu/kawa/xml/XStringType;


# instance fields
.field pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "gnu.kawa.xml.XString"

    .line 18
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XStringType;->XStringType:Lgnu/bytecode/ClassType;

    .line 31
    new-instance v0, Lgnu/kawa/xml/XStringType;

    sget-object v1, Lgnu/kawa/xml/XStringType;->stringType:Lgnu/kawa/xml/XDataType;

    const-string v2, "normalizedString"

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    .line 35
    new-instance v1, Lgnu/kawa/xml/XStringType;

    const-string v2, "token"

    const/16 v3, 0x28

    invoke-direct {v1, v2, v0, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v1, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    .line 39
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v2, "language"

    const/16 v3, 0x29

    const-string v5, "[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*"

    invoke-direct {v0, v2, v1, v3, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->languageType:Lgnu/kawa/xml/XStringType;

    .line 43
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v2, "NMTOKEN"

    const/16 v3, 0x2a

    const-string v5, "\\c+"

    invoke-direct {v0, v2, v1, v3, v5}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->NMTOKENType:Lgnu/kawa/xml/XStringType;

    .line 47
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v2, "Name"

    const/16 v3, 0x2b

    invoke-direct {v0, v2, v1, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->NameType:Lgnu/kawa/xml/XStringType;

    .line 51
    new-instance v1, Lgnu/kawa/xml/XStringType;

    const-string v2, "NCName"

    const/16 v3, 0x2c

    invoke-direct {v1, v2, v0, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v1, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    .line 55
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v2, "ID"

    const/16 v3, 0x2d

    invoke-direct {v0, v2, v1, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->IDType:Lgnu/kawa/xml/XStringType;

    .line 59
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v2, "IDREF"

    const/16 v3, 0x2e

    invoke-direct {v0, v2, v1, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->IDREFType:Lgnu/kawa/xml/XStringType;

    .line 63
    new-instance v0, Lgnu/kawa/xml/XStringType;

    const-string v2, "ENTITY"

    const/16 v3, 0x2f

    invoke-direct {v0, v2, v1, v3, v4}, Lgnu/kawa/xml/XStringType;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/XStringType;->ENTITYType:Lgnu/kawa/xml/XStringType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/kawa/xml/XDataType;ILjava/lang/String;)V
    .locals 1

    .line 23
    sget-object v0, Lgnu/kawa/xml/XStringType;->XStringType:Lgnu/bytecode/ClassType;

    invoke-direct {p0, p1, v0, p3}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    .line 24
    iput-object p2, p0, Lgnu/kawa/xml/XStringType;->baseType:Lgnu/kawa/xml/XDataType;

    if-eqz p4, :cond_0

    .line 27
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/xml/XStringType;->pattern:Ljava/util/regex/Pattern;

    :cond_0
    return-void
.end method

.method public static makeNCName(Ljava/lang/String;)Lgnu/kawa/xml/XString;
    .locals 1

    .line 151
    sget-object v0, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    invoke-virtual {v0, p0}, Lgnu/kawa/xml/XStringType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/kawa/xml/XString;

    return-object p0
.end method


# virtual methods
.method public cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 140
    instance-of v0, p1, Lgnu/kawa/xml/XString;

    if-eqz v0, :cond_0

    .line 142
    move-object v0, p1

    check-cast v0, Lgnu/kawa/xml/XString;

    .line 143
    invoke-virtual {v0}, Lgnu/kawa/xml/XString;->getStringType()Lgnu/kawa/xml/XStringType;

    move-result-object v1

    if-ne v1, p0, :cond_0

    return-object v0

    .line 146
    :cond_0
    sget-object v0, Lgnu/kawa/xml/XStringType;->stringType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XStringType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 2

    .line 69
    instance-of v0, p1, Lgnu/kawa/xml/XString;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    check-cast p1, Lgnu/kawa/xml/XString;

    invoke-virtual {p1}, Lgnu/kawa/xml/XString;->getStringType()Lgnu/kawa/xml/XStringType;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 80
    :cond_1
    iget-object p1, p1, Lgnu/kawa/xml/XDataType;->baseType:Lgnu/kawa/xml/XDataType;

    goto :goto_0

    :cond_2
    return v1
.end method

.method public matches(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 92
    iget v0, p0, Lgnu/kawa/xml/XStringType;->typeCode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lgnu/kawa/xml/XStringType;->pattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 113
    :pswitch_1
    invoke-static {p1}, Lgnu/xml/XName;->isNCName(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    .line 107
    :pswitch_2
    invoke-static {p1}, Lgnu/xml/XName;->isName(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    .line 116
    :pswitch_3
    invoke-static {p1}, Lgnu/xml/XName;->isNmToken(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    .line 103
    :pswitch_4
    iget v0, p0, Lgnu/kawa/xml/XStringType;->typeCode:I

    const/16 v3, 0x27

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-static {p1, v0}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    move p1, v1

    :goto_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    .line 126
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not a valid XML "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/kawa/xml/XStringType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 131
    sget-object v0, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/XStringType;->matches(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Lgnu/kawa/xml/XString;

    invoke-direct {v0, p1, p0}, Lgnu/kawa/xml/XString;-><init>(Ljava/lang/String;Lgnu/kawa/xml/XStringType;)V

    return-object v0

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lgnu/kawa/xml/XStringType;->name:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
