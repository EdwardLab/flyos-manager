.class public Lcom/google/appinventor/components/runtime/ListView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LISTVIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>This is a visible component that displays a list of text elements. <br> The list can be set using the ElementsFromString property or using the Elements block in the blocks editor. </p>"
    iconName = "images/listView.png"
    version = 0xd
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:F

.field private ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:I

.field private AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:I

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

.field private KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:F

.field private Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:I

.field private N4rx6qe3Dkxm9iGosdnZviEGwwAyjrMopVTdmRoB5smsVn2ef0JNliQjJW08w5OT:I

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

.field private Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

.field private ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

.field private Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:I

.field private bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Z

.field private backgroundColor:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private dividerColor:I

.field private fontTypeface:I

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/widget/TextView;

.field private ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup$LayoutParams;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

.field private final listViewLayout:Landroid/widget/LinearLayout;

.field private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

.field private pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:I

.field private poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:I

.field private poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;

.field private tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

.field private wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:F

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 88
    invoke-direct/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/high16 v2, -0x1000000

    .line 60
    iput v2, v0, Lcom/google/appinventor/components/runtime/ListView;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:I

    const/4 v3, -0x1

    .line 61
    iput v3, v0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 62
    iput v2, v0, Lcom/google/appinventor/components/runtime/ListView;->dividerColor:I

    const/4 v4, 0x2

    .line 63
    iput v4, v0, Lcom/google/appinventor/components/runtime/ListView;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:I

    const-string v5, "Search list..."

    .line 64
    iput-object v5, v0, Lcom/google/appinventor/components/runtime/ListView;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

    const/4 v5, 0x0

    .line 65
    iput-boolean v5, v0, Lcom/google/appinventor/components/runtime/ListView;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Z

    const v6, -0x333334

    .line 66
    iput v6, v0, Lcom/google/appinventor/components/runtime/ListView;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:I

    .line 67
    iput-boolean v5, v0, Lcom/google/appinventor/components/runtime/ListView;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Z

    .line 68
    iput v5, v0, Lcom/google/appinventor/components/runtime/ListView;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:I

    .line 70
    iput v3, v0, Lcom/google/appinventor/components/runtime/ListView;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:I

    .line 71
    iput v6, v0, Lcom/google/appinventor/components/runtime/ListView;->N4rx6qe3Dkxm9iGosdnZviEGwwAyjrMopVTdmRoB5smsVn2ef0JNliQjJW08w5OT:I

    const/high16 v7, 0x41400000    # 12.0f

    .line 72
    iput v7, v0, Lcom/google/appinventor/components/runtime/ListView;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:F

    const-string v7, ""

    .line 75
    iput-object v7, v0, Lcom/google/appinventor/components/runtime/ListView;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;

    .line 76
    iput v5, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    .line 77
    iput v5, v0, Lcom/google/appinventor/components/runtime/ListView;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    const/high16 v8, 0x41b00000    # 22.0f

    .line 80
    iput v8, v0, Lcom/google/appinventor/components/runtime/ListView;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:F

    const/16 v9, 0xf

    .line 81
    iput v9, v0, Lcom/google/appinventor/components/runtime/ListView;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:I

    const/high16 v9, 0x3f800000    # 1.0f

    .line 83
    iput v9, v0, Lcom/google/appinventor/components/runtime/ListView;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:F

    const/4 v9, 0x1

    .line 84
    iput-boolean v9, v0, Lcom/google/appinventor/components/runtime/ListView;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    .line 89
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v10

    iput-object v10, v0, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    .line 90
    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 91
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    iput-object v10, v0, Lcom/google/appinventor/components/runtime/ListView;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 93
    new-instance v10, Landroid/widget/ListView;

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    .line 94
    invoke-virtual {v10, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 96
    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 98
    invoke-virtual {v10, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 99
    invoke-virtual {v10, v5}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 100
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    .line 101
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    new-instance v12, Landroid/widget/EditText;

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    .line 104
    invoke-virtual {v12, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 105
    iget-object v12, v0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    const/4 v13, -0x2

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setWidth(I)V

    .line 106
    iget-object v12, v0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/ListView;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v15, v0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    const/16 v17, 0x2

    const/16 v18, 0x2

    const/16 v19, 0x2

    const/16 v20, 0x2

    move-object/from16 v16, v12

    invoke-static/range {v15 .. v20}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setPadding(Landroid/view/View;Landroid/content/Context;IIII)V

    .line 111
    iget-object v12, v0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    new-instance v14, Lcom/google/appinventor/components/runtime/ListView$1;

    invoke-direct {v14, v0}, Lcom/google/appinventor/components/runtime/ListView$1;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v12, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-boolean v12, v0, Lcom/google/appinventor/components/runtime/ListView;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Z

    if-eqz v12, :cond_0

    .line 137
    iget-object v12, v0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v12, v0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setVisibility(I)V

    .line 142
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/ListView;->DividerColor(I)V

    .line 143
    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/ListView;->DividerHeight(I)V

    .line 145
    invoke-virtual {v0, v8}, Lcom/google/appinventor/components/runtime/ListView;->TextSize(F)V

    const/16 v4, 0xa

    .line 146
    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/ListView;->ItemHeight(I)V

    .line 147
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/ListView;->TextColor(I)V

    .line 148
    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/ListView;->SearchTextColor(I)V

    .line 149
    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/ListView;->SearchHintColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 150
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/ListView;->SearchTextSize(F)V

    const v2, -0x9f8275

    .line 151
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/ListView;->BackgroundColor(I)V

    .line 152
    invoke-virtual {v0, v9}, Lcom/google/appinventor/components/runtime/ListView;->ShowScrollbar(Z)V

    .line 153
    invoke-virtual {v0, v9}, Lcom/google/appinventor/components/runtime/ListView;->ScrollbarFading(Z)V

    .line 154
    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/ListView;->LongClickEnabled(Z)V

    .line 155
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/ListView;->ShowSelectionColor(Z)V

    .line 157
    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/ListView;->ElementsFromString(Ljava/lang/String;)V

    .line 158
    iget v2, v0, Lcom/google/appinventor/components/runtime/ListView;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:F

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ScrollingSpeed(F)V

    .line 159
    invoke-virtual {v0, v9}, Lcom/google/appinventor/components/runtime/ListView;->HTMLFormat(Z)V

    .line 160
    invoke-virtual {v0, v13}, Lcom/google/appinventor/components/runtime/ListView;->Width(I)V

    .line 161
    invoke-virtual {v0, v13}, Lcom/google/appinventor/components/runtime/ListView;->Height(I)V

    .line 163
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 166
    invoke-interface {v1, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const-string v1, "ListView"

    const-string v2, "Listview Created"

    .line 168
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/ListView;)F
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/ListView;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:F

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/ListView;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/ListView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/ListView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    return p0
.end method

.method static synthetic hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/ListView;->N4rx6qe3Dkxm9iGosdnZviEGwwAyjrMopVTdmRoB5smsVn2ef0JNliQjJW08w5OT:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)F
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/ListView;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:F

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/ListView;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/ViewGroup$LayoutParams;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/ArrayAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/EditText;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/ListView;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    return p0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/ListView;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:I

    return p0
.end method

.method static synthetic vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/ListView;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:I

    return p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    return p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/ListView;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/ListView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return p0
.end method


# virtual methods
.method public AfterPicking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Simple event to be raised after the an element has been chosen in the list. The selected element is available in the Selection property."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterPicking"

    .line 335
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the listview background."
    .end annotation

    .line 397
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF607D8B"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 404
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 405
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public ClearList()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove all the items from the list"
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 655
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public DividerColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the divider color."
    .end annotation

    .line 378
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerColor:I

    return v0
.end method

.method public DividerColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the divider color"
    .end annotation

    .line 373
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerColor:I

    return-void
.end method

.method public DividerHeight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the divider height."
    .end annotation

    .line 391
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:I

    return v0
.end method

.method public DividerHeight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "integer"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the divider height."
    .end annotation

    .line 386
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:I

    return-void
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "List of text elements to show in the ListView."
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 199
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    .line 201
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 204
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    aput-object v3, v4, v1

    move v1, v2

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->listUpdate()V

    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The ListView elements specified as a string with the items separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list."
    .end annotation

    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, " *, *"

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    .line 227
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 229
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    .line 231
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 233
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 234
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    aput-object v3, v4, v1

    move v1, v2

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->listUpdate()V

    :cond_1
    return-void
.end method

.method public FilterBarHint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

    return-object v0
.end method

.method public FilterBarHint(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Search list..."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The hint that will be displayed in the filter bar."
    .end annotation

    .line 418
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setHint(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public FontBold(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 560
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 553
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 572
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 565
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return v0
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 577
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 584
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    return-void
.end method

.method public FontTypefaceImport(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .line 592
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:Ljava/lang/String;

    return-void
.end method

.method public HTMLFormat(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, then the listview will show html text else it will show plain text. Note: Not all HTML is supported."
    .end annotation

    .line 251
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    .line 252
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->listUpdate()V

    :cond_0
    return-void
.end method

.method public HTMLFormat()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true if html is enabled."
    .end annotation

    .line 243
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    return v0
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the height of the list on the view."
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 183
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public ItemHeight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the listview item height."
    .end annotation

    .line 486
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:I

    return v0
.end method

.method public ItemHeight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the listview item height. If you write 10, that means the item height will be 10 percent of the device screen height."
    .end annotation

    .line 481
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:I

    return-void
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Simple event to be raised after the an element has been chosen in the list via long click. The selected element is available in the Selection property."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 341
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LongClickEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true long click on items are enabled, else long click is disabled."
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setLongClickable(Z)V

    return-void
.end method

.method public LongClickEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the state of \'Long Click Enabled\'."
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isLongClickable()Z

    move-result v0

    return v0
.end method

.method public ScrollToPosition(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Smoothly scroll to the specified position. The listview will scroll such that the indicated position is displayed."
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public ScrollbarFading(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true you will see always the scrollbar on the listview."
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    return-void
.end method

.method public ScrollbarFading()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the state of ScrollbarFading. If ScrollbarFading is enabled returns true."
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isScrollbarFadingEnabled()Z

    move-result v0

    return v0
.end method

.method public ScrollingSpeed()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the scrolling speed."
    .end annotation

    .line 648
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:F

    return v0
.end method

.method public ScrollingSpeed(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The amount of friction applied to flings."
    .end annotation

    .line 642
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:F

    .line 643
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    return-void
.end method

.method public SearchHintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the color of the search hint text."
    .end annotation

    .line 548
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->N4rx6qe3Dkxm9iGosdnZviEGwwAyjrMopVTdmRoB5smsVn2ef0JNliQjJW08w5OT:I

    return v0
.end method

.method public SearchHintColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the search hint text."
    .end annotation

    .line 543
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->N4rx6qe3Dkxm9iGosdnZviEGwwAyjrMopVTdmRoB5smsVn2ef0JNliQjJW08w5OT:I

    return-void
.end method

.method public SearchTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the color of the search text."
    .end annotation

    .line 523
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:I

    return v0
.end method

.method public SearchTextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the search text."
    .end annotation

    .line 518
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->poblgm1P6mADk8QKAia8LTNTlp3hP9LK4vL2LyACRyn6OaTobhLhKjphCbjAETmg:I

    return-void
.end method

.method public SearchTextSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text size of the search text."
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public SearchTextSize(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The text size of the search text."
    .end annotation

    .line 530
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:F

    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the text last selected in the ListView."
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the selection to the ListView."
    .end annotation

    .line 504
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:I

    return-void
.end method

.method public SelectionColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the selection color."
    .end annotation

    .line 464
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:I

    return v0
.end method

.method public SelectionColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the item when it is selected."
    .end annotation

    .line 459
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:I

    return-void
.end method

.method public SelectionIndex()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1.  If no item is selected, the value will be 0.  If an attempt is made to set this to a number less than 1 or greater than the number of items in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .line 473
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:I

    return v0
.end method

.method public SelectionIndex(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the position of the selected item in the ListView. This could be used to retrievethe text at the chosen position. If an attempt is made to set this to a number less than 1 or greater than the number of items in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:I

    .line 497
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectionFromIndex(ILcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

    return-void
.end method

.method public ShowFilterBar(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets visibility of ShowFilterBar. True will show the bar, False will hide it."
    .end annotation

    .line 426
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Z

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    return-void

    .line 430
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/EditText;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method public ShowFilterBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current state of ShowFilterBar for visibility."
    .end annotation

    .line 437
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Z

    return v0
.end method

.method public ShowScrollbar(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true you will see a scrollbar when you scrolling the listview."
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public ShowScrollbar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the state of ShowScrollbar. If ShowScrollbar is enabled returns true."
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public ShowSelectionColor(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets visibility of ShowSelectionColor. True will show the selection color on a selected item, False will hide it."
        userVisible = false
    .end annotation

    .line 446
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Z

    return-void
.end method

.method public ShowSelectionColor()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current state of ShowSelectionColor for visibility."
    .end annotation

    .line 452
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Z

    return v0
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 597
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 604
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text color of the listview items."
    .end annotation

    .line 365
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:I

    return v0
.end method

.method public TextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The text color of the listview items."
    .end annotation

    .line 360
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:I

    return-void
.end method

.method public TextSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text size of the listview items."
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public TextSize(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "22"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The text size of the listview items."
    .end annotation

    .line 348
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:F

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the width of the list on the view."
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 193
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listViewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public listUpdate()V
    .locals 3

    .line 258
    new-instance v0, Lcom/google/appinventor/components/runtime/ListView$2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/appinventor/components/runtime/ListView$2;-><init>(Lcom/google/appinventor/components/runtime/ListView;Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    .line 291
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 293
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 298
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Z

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget p4, p0, Lcom/google/appinventor/components/runtime/ListView;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:I

    invoke-direct {p2, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 p1, p3, 0x1

    .line 301
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:I

    .line 302
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

    .line 303
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->AfterPicking()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 308
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->ht6M5vNRogDvRYCDAZw5zQxzUwImwEpGaHRJyoKVPYuZoKA1X0CMwOko8kVy3tgl:Z

    if-eqz p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget p4, p0, Lcom/google/appinventor/components/runtime/ListView;->AsUIHfRHW1pScN9YQW0IsOeuFdHXhbXb53xXbDg8x2ZIBxv57XORnQnTS1wprCIt:I

    invoke-direct {p2, p4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 p1, p3, 0x1

    .line 311
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:I

    .line 312
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Ljava/lang/String;

    .line 313
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->LongClick()V

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->isLongClickable()Z

    move-result p1

    return p1
.end method
