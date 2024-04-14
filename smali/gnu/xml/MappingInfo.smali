.class final Lgnu/xml/MappingInfo;
.super Ljava/lang/Object;
.source "XMLFilter.java"


# instance fields
.field index:I

.field local:Ljava/lang/String;

.field namespaces:Lgnu/xml/NamespaceBinding;

.field nextInBucket:Lgnu/xml/MappingInfo;

.field prefix:Ljava/lang/String;

.field qname:Lgnu/mapping/Symbol;

.field tagHash:I

.field type:Lgnu/xml/XName;

.field uri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1640
    iput v0, p0, Lgnu/xml/MappingInfo;->index:I

    return-void
.end method

.method static equals(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 5

    .line 1691
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 1692
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1695
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static equals(Ljava/lang/String;[CII)Z
    .locals 4

    .line 1702
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v2, p2, v0

    .line 1705
    aget-char v2, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static hash(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1644
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eqz p0, :cond_0

    .line 1646
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method static hash([CII)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    add-int v5, p1, v2

    .line 1658
    aget-char v5, p0, v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_0

    if-gez v1, :cond_0

    move v1, v2

    move v3, v4

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    xor-int p0, v3, v4

    return p0
.end method


# virtual methods
.method match([CII)Z
    .locals 4

    .line 1674
    iget-object v0, p0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1676
    iget-object v0, p0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1677
    iget-object v1, p0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v0

    const/4 v3, 0x1

    if-ne p3, v2, :cond_0

    .line 1678
    aget-char p3, p1, v1

    const/16 v2, 0x3a

    if-ne p3, v2, :cond_0

    iget-object p3, p0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    invoke-static {p3, p1, p2, v1}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    add-int/2addr p2, v1

    add-int/2addr p2, v3

    invoke-static {p3, p1, p2, v0}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 1684
    :cond_1
    iget-object v0, p0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result p1

    return p1
.end method
