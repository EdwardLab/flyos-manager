.class public Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;
.super Lcom/google/appinventor/components/runtime/MakeroidListViewBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LISTVIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "This is a visible component that displays a list of a image and two labels"
    helpUrl = "https://docs.kodular.io/components/user-interface/list-view-image-and-text/"
    iconName = "images/listView.png"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "glide.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;
    }
.end annotation


# instance fields
.field private G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Ljava/lang/String;

.field private HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

.field private LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:Z

.field private O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

.field private OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Z

.field private cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:Z

.field private dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

.field private gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:F

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:F

.field private pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:Ljava/lang/String;

.field private q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:Z

.field private seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:Z

.field private size:I

.field private tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:I

.field private titleColor:I

.field private xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;

    .line 56
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->size:I

    .line 57
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:I

    const/high16 p1, 0x41600000    # 14.0f

    .line 59
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:F

    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:Z

    .line 61
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->titleColor:I

    .line 62
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

    const-string v2, ""

    .line 63
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:Z

    .line 65
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:Z

    .line 67
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:F

    .line 68
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:Z

    .line 69
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:I

    .line 70
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    .line 71
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

    .line 73
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Z

    .line 78
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->ItemSize(I)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->ImageSide(I)V

    .line 84
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:F

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->TitleTextSize(F)V

    .line 85
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->TitleBold(Z)V

    .line 86
    sget p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->DEFAULT_PRIMARY_TEXT_COLOR:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->TitleColor(I)V

    .line 87
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->TitleFontTypeface(I)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->TitleFontTypefaceImport(Ljava/lang/String;)V

    .line 89
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->TitleHTML(Z)V

    .line 90
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->TitleItalic(Z)V

    .line 92
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:F

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->SubtitleTextSize(F)V

    .line 93
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->SubtitleBold(Z)V

    .line 94
    sget p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->DEFAULT_SECONDARY_TEXT_COLOR:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->SubtitleColor(I)V

    .line 95
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->SubtitleFontTypeface(I)V

    .line 96
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->SubtitleFontTypefaceImport(Ljava/lang/String;)V

    .line 97
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->SubtitleHTML(Z)V

    .line 98
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->SubtitleItalic(Z)V

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:F

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:I

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/lang/String;
    .locals 1

    .line 1392
    iget p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "_right"

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:Z

    return p0
.end method

.method static synthetic hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:Z

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:F

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->titleColor:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/lang/String;
    .locals 1

    .line 1382
    iget p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->size:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "small"

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const-string p0, "big"

    return-object p0

    :cond_1
    const-string p0, "normal"

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:Z

    return p0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    return p0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Z

    return p0
.end method

.method static synthetic vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

    return p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

    return p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:Z

    return p0
.end method

.method private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V
    .locals 2

    .line 377
    new-instance v0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;-><init>(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;

    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public AddItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a item to the list"
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public AddItemFromList(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a item to the list"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->AddItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ClearList()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove all the items from the list"
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public Click(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the user clicks on a item in the list"
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "Click"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ImageSide()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the Image Side"
    .end annotation

    .line 196
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:I

    return v0
.end method

.method public ImageSide(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "left_right"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the side of the image.\nSet it to 1 for Left side and 2 for Right side"
    .end annotation

    .line 190
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->xaven5ecM0Ll2H1GHPRV82tONpToW8URGRDgxbH0b2M0q5wAsNNBDrpsKvL0qvHt:I

    .line 191
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public ItemSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns ListItem size"
    .end annotation

    .line 184
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->size:I

    return v0
.end method

.method public ItemSize(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "list_item_size"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set ListItem Size.\nSet it to 1 for Normal size, 2 for Small size and 3 for Big size."
    .end annotation

    .line 178
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->size:I

    .line 179
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public LongClick(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the user long clicks on a item in the list"
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const-string p1, "LongClick"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RemoveItem(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a item from the list"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 169
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public SubtitleBold(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the subtitle should be in bold text"
    .end annotation

    .line 278
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:Z

    .line 279
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public SubtitleBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 296
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:Z

    return v0
.end method

.method public SubtitleColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 291
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:I

    return v0
.end method

.method public SubtitleColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF757575"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Changed the color of the subtitle text"
    .end annotation

    if-nez p1, :cond_0

    .line 285
    sget p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->DEFAULT_SECONDARY_TEXT_COLOR:I

    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:I

    .line 286
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public SubtitleFontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 308
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    return v0
.end method

.method public SubtitleFontTypeface(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the Typeface of the Subtitle"
        userVisible = false
    .end annotation

    .line 302
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    .line 303
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public SubtitleFontTypefaceImport(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom title font."
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->G7Lxwqvaa0zcPMEYmgjECqcap18lY2TYRMrZOi1cD4z0oU809LnjVuckWEr78wl:Ljava/lang/String;

    return-void
.end method

.method public SubtitleHTML(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, then the subtitle will show html text else it will show plain text. Note: Not all HTML is supported."
    .end annotation

    .line 324
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

    .line 325
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public SubtitleHTML()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 330
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

    return v0
.end method

.method public SubtitleItalic(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the subtitle should be in italic text"
    .end annotation

    .line 336
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Z

    .line 337
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public SubtitleItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 342
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Z

    return v0
.end method

.method public SubtitleTextSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text size of the subtitle."
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 370
    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:F

    div-float/2addr v1, v0

    return v1
.end method

.method public SubtitleTextSize(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The text size of the subtitle."
    .end annotation

    .line 363
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:F

    .line 364
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public TitleBold(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the title should be in bold text"
    .end annotation

    .line 205
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:Z

    .line 206
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public TitleBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 211
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:Z

    return v0
.end method

.method public TitleColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 223
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->titleColor:I

    return v0
.end method

.method public TitleColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF212121"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Changed the color of the title text"
    .end annotation

    if-nez p1, :cond_0

    .line 217
    sget p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->DEFAULT_PRIMARY_TEXT_COLOR:I

    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->titleColor:I

    .line 218
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public TitleFontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 235
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

    return v0
.end method

.method public TitleFontTypeface(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the Typeface of the Title"
        userVisible = false
    .end annotation

    .line 229
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->dTbjShrSvDZnDCeVo9i3X83sAePZ6DkuyHJPQ6B7WbRWcPLJlbxhZYnAC0mU9DUR:I

    .line 230
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public TitleFontTypefaceImport(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom title font."
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->pixa37in9tdgjNQb2jpfjxTaBGtatW1GnEvNM302mGQljyvLBwDosTGoRPcRGYok:Ljava/lang/String;

    return-void
.end method

.method public TitleHTML(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, then the title will show html text else it will show plain text. Note: Not all HTML is supported."
    .end annotation

    .line 251
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:Z

    .line 252
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public TitleHTML()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 257
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:Z

    return v0
.end method

.method public TitleItalic(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the title should be in italic text"
    .end annotation

    .line 263
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:Z

    .line 264
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public TitleItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 269
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:Z

    return v0
.end method

.method public TitleTextSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text size of the title."
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 356
    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:F

    div-float/2addr v1, v0

    return v1
.end method

.method public TitleTextSize(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The text size of the title."
    .end annotation

    .line 349
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:F

    .line 350
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT()V

    return-void
.end method

.method public UpdateItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update a item of the list"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public click(I)V
    .locals 4

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->Click(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 109
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public longClick(I)V
    .locals 4

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->LongClick(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 118
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method
