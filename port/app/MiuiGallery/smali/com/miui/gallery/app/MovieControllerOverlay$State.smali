.class final enum Lcom/miui/gallery/app/MovieControllerOverlay$State;
.super Ljava/lang/Enum;
.source "MovieControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/app/MovieControllerOverlay$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/app/MovieControllerOverlay$State;

.field public static final enum ENDED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

.field public static final enum ERROR:Lcom/miui/gallery/app/MovieControllerOverlay$State;

.field public static final enum LOADING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

.field public static final enum PAUSED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

.field public static final enum PLAYING:Lcom/miui/gallery/app/MovieControllerOverlay$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PLAYING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    .line 53
    new-instance v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PAUSED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    .line 54
    new-instance v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;->ENDED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    .line 55
    new-instance v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;->ERROR:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    .line 56
    new-instance v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v6}, Lcom/miui/gallery/app/MovieControllerOverlay$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;->LOADING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/gallery/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PLAYING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/gallery/app/MovieControllerOverlay$State;->PAUSED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/app/MovieControllerOverlay$State;->ENDED:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/app/MovieControllerOverlay$State;->ERROR:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/app/MovieControllerOverlay$State;->LOADING:Lcom/miui/gallery/app/MovieControllerOverlay$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;->$VALUES:[Lcom/miui/gallery/app/MovieControllerOverlay$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/app/MovieControllerOverlay$State;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/app/MovieControllerOverlay$State;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/miui/gallery/app/MovieControllerOverlay$State;->$VALUES:[Lcom/miui/gallery/app/MovieControllerOverlay$State;

    invoke-virtual {v0}, [Lcom/miui/gallery/app/MovieControllerOverlay$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/app/MovieControllerOverlay$State;

    return-object v0
.end method
