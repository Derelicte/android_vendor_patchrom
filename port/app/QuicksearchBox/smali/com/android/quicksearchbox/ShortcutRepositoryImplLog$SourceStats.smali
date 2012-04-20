.class final enum Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;
.super Ljava/lang/Enum;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ShortcutRepositoryImplLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SourceStats"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

.field static final COLUMNS:[Ljava/lang/String;

.field public static final enum corpus:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

.field public static final enum total_clicks:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;


# instance fields
.field public final fullName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 755
    new-instance v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    const-string v1, "corpus"

    invoke-direct {v0, v1, v2}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->corpus:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    .line 756
    new-instance v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    const-string v1, "total_clicks"

    invoke-direct {v0, v1, v3}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    .line 754
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->corpus:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->total_clicks:Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->$VALUES:[Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    .line 760
    invoke-static {}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->initColumns()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 773
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sourcetotals."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->fullName:Ljava/lang/String;

    .line 775
    return-void
.end method

.method private static initColumns()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 763
    invoke-static {}, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->values()[Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    move-result-object v2

    .line 764
    .local v2, vals:[Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/String;

    .line 765
    .local v0, columns:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 766
    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->fullName:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;
    .locals 1
    .parameter

    .prologue
    .line 754
    const-class v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    return-object v0
.end method

.method public static values()[Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;
    .locals 1

    .prologue
    .line 754
    sget-object v0, Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->$VALUES:[Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    invoke-virtual {v0}, [Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quicksearchbox/ShortcutRepositoryImplLog$SourceStats;

    return-object v0
.end method
