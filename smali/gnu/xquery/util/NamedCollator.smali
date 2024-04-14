.class public Lgnu/xquery/util/NamedCollator;
.super Ljava/text/Collator;
.source "NamedCollator.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final UNICODE_CODEPOINT_COLLATION:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions/collation/codepoint"

.field public static final codepointCollation:Lgnu/xquery/util/NamedCollator;


# instance fields
.field collator:Ljava/text/Collator;

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lgnu/xquery/util/NamedCollator;

    invoke-direct {v0}, Lgnu/xquery/util/NamedCollator;-><init>()V

    sput-object v0, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    const-string v1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    .line 38
    iput-object v1, v0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    return-void
.end method

.method public static codepointCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ne v3, v0, :cond_1

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    return v2

    :cond_1
    const/4 v6, 0x1

    if-ne v4, v1, :cond_2

    return v6

    :cond_2
    add-int/lit8 v7, v3, 0x1

    .line 64
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/high16 v8, 0x10000

    const v9, 0xdc00

    const v10, 0xd800

    if-lt v3, v10, :cond_3

    if-ge v3, v9, :cond_3

    if-ge v7, v0, :cond_3

    sub-int/2addr v3, v10

    mul-int/lit16 v3, v3, 0x400

    add-int/lit8 v11, v7, 0x1

    .line 66
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int/2addr v7, v9

    add-int/2addr v3, v7

    add-int/2addr v3, v8

    move v7, v3

    move v3, v11

    goto :goto_2

    :cond_3
    move v12, v7

    move v7, v3

    move v3, v12

    :goto_2
    add-int/lit8 v11, v4, 0x1

    .line 68
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v10, :cond_4

    if-ge v4, v9, :cond_4

    if-ge v11, v1, :cond_4

    sub-int/2addr v4, v10

    mul-int/lit16 v4, v4, 0x400

    add-int/lit8 v10, v11, 0x1

    .line 70
    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sub-int/2addr v11, v9

    add-int/2addr v4, v11

    add-int/2addr v4, v8

    goto :goto_3

    :cond_4
    move v10, v11

    :goto_3
    if-eq v7, v4, :cond_6

    if-ge v7, v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v5, 0x1

    :goto_4
    return v5

    :cond_6
    move v4, v10

    goto :goto_0
.end method

.method public static find(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;
    .locals 0

    .line 34
    invoke-static {p0}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object p0

    return-object p0
.end method

.method public static make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;
    .locals 1

    .line 21
    new-instance v0, Lgnu/xquery/util/NamedCollator;

    invoke-direct {v0}, Lgnu/xquery/util/NamedCollator;-><init>()V

    .line 22
    iput-object p0, v0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Lgnu/xquery/util/NamedCollator;->resolve()V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 80
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 83
    :cond_0
    invoke-static {p1, p2}, Lgnu/xquery/util/NamedCollator;->codepointCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 1

    .line 89
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    invoke-virtual {v0, p1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 96
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/text/Collator;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lgnu/xquery/util/NamedCollator;->resolve()V

    return-void
.end method

.method public resolve()V
    .locals 3

    .line 42
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown collation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
