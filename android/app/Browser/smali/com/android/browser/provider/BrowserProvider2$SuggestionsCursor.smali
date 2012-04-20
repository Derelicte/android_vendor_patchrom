.class Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "BrowserProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/BrowserProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SuggestionsCursor"
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mSource:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2099
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 2111
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 2112
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    .line 2113
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2117
    sget-object v0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1
    .parameter "column"

    .prologue
    .line 2149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 2154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 2159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 2164
    sparse-switch p1, :sswitch_data_0

    .line 2170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2166
    :sswitch_0
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2168
    :goto_0
    return-wide v0

    :sswitch_1
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 2164
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 2175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "columnIndex"

    .prologue
    const/4 v1, 0x1

    .line 2122
    packed-switch p1, :pswitch_data_0

    .line 2139
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2124
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2126
    :pswitch_1
    const-string v0, "android.intent.action.VIEW"

    goto :goto_0

    .line 2128
    :pswitch_2
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2131
    :pswitch_3
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2133
    :pswitch_4
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2135
    :pswitch_5
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2137
    :pswitch_6
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$SuggestionsCursor;->mSource:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
