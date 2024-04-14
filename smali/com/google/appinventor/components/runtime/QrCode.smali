.class public Lcom/google/appinventor/components/runtime/QrCode;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/qrCode.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation


# instance fields
.field private BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

.field private context:Landroid/content/Context;

.field private fAlnFrzRyM2sCUVmNXgAumx383He1buRJXamXMT9T0hNFh1WxfF7xQU1M3W9TIGM:Ljava/lang/String;

.field private gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Ljava/lang/String;

.field private hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:Ljava/lang/String;

.field private iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

.field private nrk4qDbuonwjAUi7HPDytbtabfk6KLkf1OM4Z1o9O6dUiFPBfNVpTU1RRHKJKimM:I

.field private plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:I

.field private size:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "Default"

    .line 36
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    const/16 v0, 0xc8

    .line 37
    iput v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->size:I

    const-string v0, "UTF-8"

    .line 38
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Ljava/lang/String;

    const/high16 v0, -0x1000000

    .line 39
    iput v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->nrk4qDbuonwjAUi7HPDytbtabfk6KLkf1OM4Z1o9O6dUiFPBfNVpTU1RRHKJKimM:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:I

    const-string v0, "png"

    .line 42
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:Ljava/lang/String;

    const-string v0, "http://api.qrserver.com/v1/create-qr-code/?data="

    .line 43
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->fAlnFrzRyM2sCUVmNXgAumx383He1buRJXamXMT9T0hNFh1WxfF7xQU1M3W9TIGM:Ljava/lang/String;

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/QrCode;->context:Landroid/content/Context;

    const-string p1, "QRCode"

    const-string v0, "QRCode Created"

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the background color of the qr code result."
    .end annotation

    .line 158
    iget v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->nrk4qDbuonwjAUi7HPDytbtabfk6KLkf1OM4Z1o9O6dUiFPBfNVpTU1RRHKJKimM:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background color of the qr code result."
    .end annotation

    .line 153
    iput p1, p0, Lcom/google/appinventor/components/runtime/QrCode;->nrk4qDbuonwjAUi7HPDytbtabfk6KLkf1OM4Z1o9O6dUiFPBfNVpTU1RRHKJKimM:I

    return-void
.end method

.method public Charset()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the charset of the input text."
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Ljava/lang/String;

    return-object v0
.end method

.method public Charset(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "UTF-8"
        editorType = "string"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the charset of the input text."
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/QrCode;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Ljava/lang/String;

    return-void
.end method

.method public Format()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the selected image format"
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:Ljava/lang/String;

    return-object v0
.end method

.method public Format(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "png"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "It\'s possible to create the QR code picture using different file formats, available are PNG, GIF, JPEG and the vector graphic formats SVG and EPS."
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/QrCode;->hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:Ljava/lang/String;

    return-void
.end method

.method public FrontColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the color of the qr code result."
    .end annotation

    .line 146
    iget v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    return v0
.end method

.method public FrontColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the color of the qr code result."
    .end annotation

    .line 141
    iput p1, p0, Lcom/google/appinventor/components/runtime/QrCode;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    return-void
.end method

.method public GenerateQrCode()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a QR Code and the result is a link to it. Example: Set the resolution(in pixel) to 200(height and width has the same value) and text to: Hello world!. Result: QR code resolution is 200x200, text = Hello world! Your text input is encoded in the link automatically."
    .end annotation

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/QrCode;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/QrCode;->fAlnFrzRyM2sCUVmNXgAumx383He1buRJXamXMT9T0hNFh1WxfF7xQU1M3W9TIGM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&color="

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&bgcolor="

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->nrk4qDbuonwjAUi7HPDytbtabfk6KLkf1OM4Z1o9O6dUiFPBfNVpTU1RRHKJKimM:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&margin="

    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&format="

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&size="

    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->size:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->size:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1191
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1192
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1193
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "QRCode"

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/google/appinventor/components/runtime/QrCode;->GotResponse(ZLjava/lang/String;)V

    const-string v0, "Success state is: true"

    .line 93
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, ""

    .line 95
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/QrCode;->GotResponse(ZLjava/lang/String;)V

    const-string v0, "Success state is: false"

    .line 96
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_1
    const-string v0, "Can not generate qr code with no text."

    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/QrCode;->GotResponse(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public GotResponse(ZLjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "You will find here the success state and image url."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotResponse"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Margin()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the margin in pixels."
    .end annotation

    .line 171
    iget v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:I

    return v0
.end method

.method public Margin(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Thickness of a margin in pixels. The margin will always have the same color as the background."
    .end annotation

    .line 166
    iput p1, p0, Lcom/google/appinventor/components/runtime/QrCode;->plg04zzrdr0Ht9HKV9W5nEWP5Bmt4Culb23NXhe3Y9LVDLRrW71oAQyHt0KrFVdM:I

    return-void
.end method

.method public Size()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the size/resolution of the qr code."
    .end annotation

    .line 121
    iget v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->size:I

    return v0
.end method

.method public Size(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the size/resolution of the qr code."
    .end annotation

    .line 116
    iput p1, p0, Lcom/google/appinventor/components/runtime/QrCode;->size:I

    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text."
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/QrCode;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Default"
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This is the text that is converted as qr code."
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/QrCode;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    return-void
.end method
