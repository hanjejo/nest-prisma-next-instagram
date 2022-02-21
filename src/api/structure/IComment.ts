export interface IComment {
    id: string
    author: string | null
    content: string | null
    created_time: Date | null
    updated_time: Date | null
    author_id: number
    post_id: number
}