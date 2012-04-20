.class public Lcom/android/inputmethod/latin/Flag;
.super Ljava/lang/Object;
.source "Flag.java"


# instance fields
.field public final mMask:I

.field public final mName:Ljava/lang/String;

.field public final mResource:I

.field public final mSource:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "mask"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Flag;->mName:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mResource:I

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mSource:I

    .line 50
    iput p1, p0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "resourceId"
    .parameter "mask"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/Flag;->mName:Ljava/lang/String;

    .line 34
    iput p1, p0, Lcom/android/inputmethod/latin/Flag;->mResource:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/Flag;->mSource:I

    .line 36
    iput p2, p0, Lcom/android/inputmethod/latin/Flag;->mMask:I

    .line 37
    return-void
.end method

.method public static initFlags([Lcom/android/inputmethod/latin/Flag;Landroid/content/Context;Lcom/android/inputmethod/latin/SubtypeSwitcher;)I
    .locals 7
    .parameter "flagArray"
    .parameter "context"
    .parameter "switcher"

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 56
    .local v2, flags:I
    if-nez p1, :cond_1

    const/4 v5, 0x0

    .line 57
    .local v5, res:Landroid/content/res/Resources;
    :goto_0
    move-object v0, p0

    .local v0, arr$:[Lcom/android/inputmethod/latin/Flag;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 58
    .local v1, entry:Lcom/android/inputmethod/latin/Flag;
    iget v6, v1, Lcom/android/inputmethod/latin/Flag;->mSource:I

    packed-switch v6, :pswitch_data_0

    .line 57
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    .end local v0           #arr$:[Lcom/android/inputmethod/latin/Flag;
    .end local v1           #entry:Lcom/android/inputmethod/latin/Flag;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    goto :goto_0

    .line 60
    .restart local v0       #arr$:[Lcom/android/inputmethod/latin/Flag;
    .restart local v1       #entry:Lcom/android/inputmethod/latin/Flag;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #res:Landroid/content/res/Resources;
    :pswitch_0
    if-eqz v5, :cond_2

    iget v6, v1, Lcom/android/inputmethod/latin/Flag;->mResource:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 61
    :cond_2
    iget v6, v1, Lcom/android/inputmethod/latin/Flag;->mMask:I

    or-int/2addr v2, v6

    goto :goto_2

    .line 64
    :pswitch_1
    if-eqz p2, :cond_3

    iget-object v6, v1, Lcom/android/inputmethod/latin/Flag;->mName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    :cond_3
    iget v6, v1, Lcom/android/inputmethod/latin/Flag;->mMask:I

    or-int/2addr v2, v6

    goto :goto_2

    .line 69
    :pswitch_2
    iget v6, v1, Lcom/android/inputmethod/latin/Flag;->mMask:I

    or-int/2addr v2, v6

    goto :goto_2

    .line 73
    .end local v1           #entry:Lcom/android/inputmethod/latin/Flag;
    :cond_4
    return v2

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
