.class public Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;
.super Landroid/database/AbstractCursor;
.source "SuggestionCursorBackedCursor.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

.field private mExtraColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "suggest_format"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "suggest_spinner_while_refreshing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    .line 65
    return-void
.end method

.method private get()Lcom/android/quicksearchbox/Suggestion;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 95
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    return-object v0
.end method

.method private getExtra(I)Ljava/lang/String;
    .locals 3
    .parameter "columnIdx"

    .prologue
    .line 99
    sget-object v2, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    sub-int v0, p1, v2

    .line 100
    .local v0, extraColumn:I
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v1

    .line 101
    .local v1, extras:Lcom/android/quicksearchbox/SuggestionExtras;
    if-eqz v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->mExtraColumns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 70
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    .line 71
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-interface {v2}, Lcom/android/quicksearchbox/SuggestionCursor;->getExtraColumns()Ljava/util/Collection;

    move-result-object v1

    .line 76
    .local v1, extraColumns:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .local v0, allColumns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->mExtraColumns:Ljava/util/ArrayList;

    .line 80
    sget-object v2, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->COLUMNS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    iget-object v2, p0, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->mExtraColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 84
    .end local v0           #allColumns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->COLUMNS:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->mCursor:Lcom/android/quicksearchbox/SuggestionCursor;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter "column"

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 188
    :goto_0
    return-wide v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "column"

    .prologue
    .line 195
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    :goto_0
    return v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->getPosition()I

    move-result v1

    .line 116
    :goto_0
    return v1

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 165
    :goto_0
    return-wide v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .parameter "column"

    .prologue
    .line 123
    sget-object v0, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 124
    packed-switch p1, :pswitch_data_0

    .line 152
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 128
    :pswitch_1
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :pswitch_2
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_3
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_4
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_5
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_6
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_7
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_8
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :pswitch_9
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_a
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_b
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_c
    invoke-direct {p0}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->get()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->isSpinnerWhileRefreshing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->getExtra(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SuggestionCursorBackedCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
