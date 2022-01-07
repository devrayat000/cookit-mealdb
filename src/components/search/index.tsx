import { Transition } from "@headlessui/react";
import { useState } from "react";
import ClearIcon from "./clear_icon";
import SearchIcon from "./search_icon";

const Search = () => {
  const [searchInput, setSearchInput] = useState("");

  return (
    <div role="searchbox">
      <form>
        <div
          className={`
                  flex justify-evenly items-center shadow-sm
                  border-gray-500 border-solid border px-4 py-2 rounded-md 
                  focus-within:border-blue-600 group transition-all
                `}
        >
          <SearchIcon className="text-gray-600 group-focus-within:text-blue-600" />
          <input
            type="text"
            name="search"
            id="search"
            placeholder="eg. Chicken Breast"
            className={`
                    p-1 mx-4 focus:ring-0 flex-1
                    border-none border-transparent border-0
                    focus:placeholder:text-blue-500
                  `}
            defaultValue=""
            value={searchInput}
            onChange={e => setSearchInput(e.target.value)}
          />
          <Transition
            as="button"
            type="reset"
            show={!!searchInput}
            enter="transition-transform"
            enterFrom="scale-0"
            enterTo="scale-100"
            leave="transition-transform"
            leaveFrom="scale-100"
            leaveTo="scale-0"
            onClick={(e: React.MouseEvent<HTMLButtonElement>) => {
              e.preventDefault();
              setSearchInput("");
            }}
          >
            <ClearIcon className="text-gray-600 group-focus-within:text-blue-600" />
          </Transition>
        </div>
      </form>
    </div>
  );
};

export default Search;
