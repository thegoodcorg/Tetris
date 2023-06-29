using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tetris
{
    public class GameState
    {
        private Block currentBlock;

        public Block CurrentBlock
        {
            get => currentBlock;
            private set
            {
                currentBlock = value;
                currentBlock.Reset();
            }
        }

        public GameGrid GameGrid { get; }
        public BlockQueue BlockQueue { get; }
        public bool GameOver { get; private set; }

        public GameState()
        {
            GameGrid = new GameGrid(22, 10);
            BlockQueue = new BlockQueue();
            CurrentBlock = BlockQueue.GetAndUpdate();
        }

        private bool BlockFits()
        {
            foreach (Position p in CurrentBlock.TilePositions())
            {
                if (!GameGrid.IsEmpty(p.Row, p.Col))
                {
                    return false;
                }
            }
            return true;
        }

        public void RotateBlockCW()
        {
            currentBlock.RotateCW();

            if (!BlockFits())
            {
                currentBlock.RotateCCW();
            }
        }

        public void RotateCCW()
        {
            currentBlock.RotateCCW();

            if(!BlockFits())
            {
                currentBlock.RotateCW();
            }
        }

        public void MoveBlockLeft()
        {
            currentBlock.Move(0, -1);

            if (!BlockFits())
            {
                currentBlock.Move(0, 1);
            }
        }

        public void MoveBlockright()
        {
            currentBlock.Move(0, 1);

            if(!BlockFits())
            {
                currentBlock.Move(0, -1);
            }
        }

        private bool IsGameOver()
        {
            return !(GameGrid.IsEmpty(0)  && !GameGrid.IsEmpty(1));
        }

        private void Placeblock()
        {
            foreach(Position p in CurrentBlock.TilePositions())
            {
                GameGrid[p.Row, p.Col] = currentBlock.Id;
            }

            GameGrid.ClearFullRows();

            if(IsGameOver())
            {
                GameOver =  true;
            }
            else
            {
                CurrentBlock = BlockQueue.GetAndUpdate();
            }
        }

        public void MoveBlockDown()
        {
            CurrentBlock.Move(1,0);

            if (!BlockFits())
            {
                CurrentBlock.Move(-1,0);
                Placeblock();
            }
        }
    }
}
