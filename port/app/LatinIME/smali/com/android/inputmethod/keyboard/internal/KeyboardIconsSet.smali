.class public Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;
.super Ljava/lang/Object;
.source "KeyboardIconsSet.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIcons:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static final getIconId(I)I
    .locals 1
    .parameter "attrIndex"

    .prologue
    .line 51
    packed-switch p0, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 53
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 57
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 59
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 61
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 63
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 65
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 67
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 69
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 71
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 73
    :pswitch_a
    const/16 v0, 0xb

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static setDefaultBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    .line 103
    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "iconId"

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 97
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icon id is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public loadIcons(Landroid/content/res/TypedArray;)V
    .locals 8
    .parameter "keyboardAttrs"

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 81
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 82
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 83
    .local v0, attrIndex:I
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIconId(I)I

    move-result v4

    .line 84
    .local v4, iconId:I
    if-eqz v4, :cond_0

    .line 86
    :try_start_0
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drawable resource for icon #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    .end local v0           #attrIndex:I
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v4           #iconId:I
    :cond_1
    return-void
.end method
