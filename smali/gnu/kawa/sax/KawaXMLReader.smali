.class public Lgnu/kawa/sax/KawaXMLReader;
.super Lgnu/kawa/sax/ContentConsumer;
.source "KawaXMLReader.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# instance fields
.field errorHandler:Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/kawa/sax/ContentConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .line 62
    iget-object v0, p0, Lgnu/kawa/sax/KawaXMLReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public parse(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lgnu/xml/XMLParser;->XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;

    move-result-object v0

    .line 71
    :cond_0
    new-instance p1, Lgnu/text/SourceMessages;

    invoke-direct {p1}, Lgnu/text/SourceMessages;-><init>()V

    .line 72
    new-instance v1, Lgnu/xml/XMLFilter;

    invoke-direct {v1, p0}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 73
    new-instance v2, Lgnu/text/LineBufferedReader;

    invoke-direct {v2, v0}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    invoke-virtual {v1, v2}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 75
    invoke-virtual {p0}, Lgnu/kawa/sax/KawaXMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 76
    invoke-static {v2, p1, v1}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/xml/XMLFilter;)V

    const/16 v0, 0x14

    .line 77
    invoke-virtual {p1, v0}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 79
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-direct {v0, p1, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lgnu/kawa/sax/KawaXMLReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
